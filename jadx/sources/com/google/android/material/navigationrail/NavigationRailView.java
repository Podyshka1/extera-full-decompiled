package com.google.android.material.navigationrail;

import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.graphics.Insets;
import androidx.core.view.WindowInsetsCompat;
import androidx.transition.ChangeBounds;
import androidx.transition.Fade;
import androidx.transition.Transition;
import androidx.transition.TransitionManager;
import androidx.transition.TransitionSet;
import com.google.android.material.C1349R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.navigation.NavigationBarDividerView;
import com.google.android.material.navigation.NavigationBarItemView;
import com.google.android.material.navigation.NavigationBarView;
import com.google.android.material.resources.MaterialResources;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes5.dex */
public class NavigationRailView extends NavigationBarView {
    static final int COLLAPSED_MAX_ITEM_COUNT = 7;
    private static final TimeInterpolator CUBIC_BEZIER_INTERPOLATOR = new PathInterpolator(0.38f, 1.21f, 0.22f, 1.0f);
    private static final int DEFAULT_HEADER_GRAVITY = 49;
    static final int DEFAULT_MENU_GRAVITY = 49;
    private static final int EXPAND_DURATION = 500;
    private static final int FADE_DURATION = 100;
    static final int NO_ITEM_MINIMUM_HEIGHT = -1;
    private int collapsedIconGravity;
    private int collapsedItemGravity;
    private int collapsedItemMinHeight;
    private int collapsedItemSpacing;
    private NavigationRailFrameLayout contentContainer;
    private final int contentMarginTop;
    private boolean expanded;
    private int expandedIconGravity;
    private int expandedItemGravity;
    private int expandedItemMinHeight;
    private int expandedItemSpacing;
    private final int headerMarginBottom;
    private View headerView;
    private final int maxExpandedWidth;
    private final int minExpandedWidth;
    private Boolean paddingBottomSystemWindowInsets;
    private Boolean paddingStartSystemWindowInsets;
    private Boolean paddingTopSystemWindowInsets;
    private final boolean scrollingEnabled;
    private boolean submenuDividersEnabled;

    @Override // com.google.android.material.navigation.NavigationBarView
    public int getCollapsedMaxItemCount() {
        return 7;
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    public int getMaxItemCount() {
        return Integer.MAX_VALUE;
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    protected boolean isSubMenuSupported() {
        return true;
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    public boolean shouldAddMenuView() {
        return true;
    }

    public NavigationRailView(Context context) {
        this(context, null);
    }

    public NavigationRailView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1349R.attr.navigationRailStyle);
    }

    public NavigationRailView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, C1349R.style.Widget_MaterialComponents_NavigationRailView);
    }

    public NavigationRailView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.paddingTopSystemWindowInsets = null;
        this.paddingBottomSystemWindowInsets = null;
        this.paddingStartSystemWindowInsets = null;
        this.expanded = false;
        this.collapsedItemMinHeight = -1;
        this.collapsedIconGravity = 0;
        this.collapsedItemGravity = 49;
        Context context2 = getContext();
        this.expandedItemSpacing = getContext().getResources().getDimensionPixelSize(C1349R.dimen.m3_navigation_rail_expanded_item_spacing);
        this.expandedItemGravity = NavigationBarView.ITEM_GRAVITY_START_CENTER;
        this.expandedIconGravity = 1;
        TintTypedArray tintTypedArrayObtainTintedStyledAttributes = ThemeEnforcement.obtainTintedStyledAttributes(context2, attributeSet, C1349R.styleable.NavigationRailView, i, i2, new int[0]);
        this.contentMarginTop = tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(C1349R.styleable.NavigationRailView_contentMarginTop, getResources().getDimensionPixelSize(C1349R.dimen.mtrl_navigation_rail_margin));
        this.headerMarginBottom = tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(C1349R.styleable.NavigationRailView_headerMarginBottom, getResources().getDimensionPixelSize(C1349R.dimen.mtrl_navigation_rail_margin));
        this.scrollingEnabled = tintTypedArrayObtainTintedStyledAttributes.getBoolean(C1349R.styleable.NavigationRailView_scrollingEnabled, false);
        setSubmenuDividersEnabled(tintTypedArrayObtainTintedStyledAttributes.getBoolean(C1349R.styleable.NavigationRailView_submenuDividersEnabled, false));
        addContentContainer();
        int resourceId = tintTypedArrayObtainTintedStyledAttributes.getResourceId(C1349R.styleable.NavigationRailView_headerLayout, 0);
        if (resourceId != 0) {
            addHeaderView(resourceId);
        }
        setMenuGravity(tintTypedArrayObtainTintedStyledAttributes.getInt(C1349R.styleable.NavigationRailView_menuGravity, 49));
        int dimensionPixelSize = tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(C1349R.styleable.NavigationRailView_itemMinHeight, -1);
        int dimensionPixelSize2 = tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(C1349R.styleable.NavigationRailView_itemMinHeight, -1);
        dimensionPixelSize = tintTypedArrayObtainTintedStyledAttributes.hasValue(C1349R.styleable.NavigationRailView_collapsedItemMinHeight) ? tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(C1349R.styleable.NavigationRailView_collapsedItemMinHeight, -1) : dimensionPixelSize;
        dimensionPixelSize2 = tintTypedArrayObtainTintedStyledAttributes.hasValue(C1349R.styleable.NavigationRailView_expandedItemMinHeight) ? tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(C1349R.styleable.NavigationRailView_expandedItemMinHeight, -1) : dimensionPixelSize2;
        setCollapsedItemMinimumHeight(dimensionPixelSize);
        setExpandedItemMinimumHeight(dimensionPixelSize2);
        this.minExpandedWidth = tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(C1349R.styleable.NavigationRailView_expandedMinWidth, context2.getResources().getDimensionPixelSize(C1349R.dimen.m3_navigation_rail_min_expanded_width));
        this.maxExpandedWidth = tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(C1349R.styleable.NavigationRailView_expandedMaxWidth, context2.getResources().getDimensionPixelSize(C1349R.dimen.m3_navigation_rail_max_expanded_width));
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(C1349R.styleable.NavigationRailView_paddingTopSystemWindowInsets)) {
            this.paddingTopSystemWindowInsets = Boolean.valueOf(tintTypedArrayObtainTintedStyledAttributes.getBoolean(C1349R.styleable.NavigationRailView_paddingTopSystemWindowInsets, false));
        }
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(C1349R.styleable.NavigationRailView_paddingBottomSystemWindowInsets)) {
            this.paddingBottomSystemWindowInsets = Boolean.valueOf(tintTypedArrayObtainTintedStyledAttributes.getBoolean(C1349R.styleable.NavigationRailView_paddingBottomSystemWindowInsets, false));
        }
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(C1349R.styleable.NavigationRailView_paddingStartSystemWindowInsets)) {
            this.paddingStartSystemWindowInsets = Boolean.valueOf(tintTypedArrayObtainTintedStyledAttributes.getBoolean(C1349R.styleable.NavigationRailView_paddingStartSystemWindowInsets, false));
        }
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(C1349R.dimen.m3_navigation_rail_item_padding_top_with_large_font);
        int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(C1349R.dimen.m3_navigation_rail_item_padding_bottom_with_large_font);
        float fLerp = AnimationUtils.lerp(0.0f, 1.0f, 0.3f, 1.0f, MaterialResources.getFontScale(context2) - 1.0f);
        float fLerp2 = AnimationUtils.lerp(getItemPaddingTop(), dimensionPixelOffset, fLerp);
        float fLerp3 = AnimationUtils.lerp(getItemPaddingBottom(), dimensionPixelOffset2, fLerp);
        setItemPaddingTop(Math.round(fLerp2));
        setItemPaddingBottom(Math.round(fLerp3));
        setCollapsedItemSpacing(tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(C1349R.styleable.NavigationRailView_itemSpacing, 0));
        setExpanded(tintTypedArrayObtainTintedStyledAttributes.getBoolean(C1349R.styleable.NavigationRailView_expanded, false));
        tintTypedArrayObtainTintedStyledAttributes.recycle();
        applyWindowInsets();
    }

    private void startTransitionAnimation() {
        if (isLaidOut()) {
            Transition interpolator = new ChangeBounds().setDuration(500L).setInterpolator(CUBIC_BEZIER_INTERPOLATOR);
            Transition duration = new Fade().setDuration(100L);
            Transition duration2 = new Fade().setDuration(100L);
            LabelMoveTransition labelMoveTransition = new LabelMoveTransition();
            Transition duration3 = new Fade().setDuration(100L);
            int childCount = getNavigationRailMenuView().getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = getNavigationRailMenuView().getChildAt(i);
                if (childAt instanceof NavigationBarItemView) {
                    NavigationBarItemView navigationBarItemView = (NavigationBarItemView) childAt;
                    interpolator.excludeTarget((View) navigationBarItemView.getLabelGroup(), true);
                    interpolator.excludeTarget((View) navigationBarItemView.getExpandedLabelGroup(), true);
                    if (this.expanded) {
                        duration2.addTarget(navigationBarItemView.getExpandedLabelGroup());
                        duration.addTarget(navigationBarItemView.getLabelGroup());
                    } else {
                        duration2.addTarget(navigationBarItemView.getLabelGroup());
                        duration.addTarget(navigationBarItemView.getExpandedLabelGroup());
                    }
                    labelMoveTransition.addTarget(navigationBarItemView.getExpandedLabelGroup());
                }
                duration3.addTarget(childAt);
            }
            TransitionSet transitionSet = new TransitionSet();
            transitionSet.setOrdering(0);
            transitionSet.addTransition(interpolator).addTransition(duration).addTransition(labelMoveTransition);
            if (!this.expanded) {
                transitionSet.addTransition(duration3);
            }
            TransitionSet transitionSet2 = new TransitionSet();
            transitionSet2.setOrdering(0);
            transitionSet2.addTransition(duration2);
            if (this.expanded) {
                transitionSet2.addTransition(duration3);
            }
            TransitionSet transitionSet3 = new TransitionSet();
            transitionSet3.setOrdering(1);
            transitionSet3.addTransition(transitionSet2).addTransition(transitionSet);
            TransitionManager.beginDelayedTransition((ViewGroup) getParent(), transitionSet3);
        }
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    public void setItemIconGravity(int i) {
        this.collapsedIconGravity = i;
        this.expandedIconGravity = i;
        super.setItemIconGravity(i);
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    public int getItemIconGravity() {
        return getNavigationRailMenuView().getItemIconGravity();
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    public void setItemGravity(int i) {
        this.collapsedItemGravity = i;
        this.expandedItemGravity = i;
        super.setItemGravity(i);
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    public int getItemGravity() {
        return getNavigationRailMenuView().getItemGravity();
    }

    private void setExpanded(boolean z) {
        if (this.expanded == z) {
            return;
        }
        startTransitionAnimation();
        this.expanded = z;
        int i = this.collapsedIconGravity;
        int i2 = this.collapsedItemSpacing;
        int i3 = this.collapsedItemMinHeight;
        int i4 = this.collapsedItemGravity;
        if (z) {
            i = this.expandedIconGravity;
            i2 = this.expandedItemSpacing;
            i3 = this.expandedItemMinHeight;
            i4 = this.expandedItemGravity;
        }
        getNavigationRailMenuView().setItemGravity(i4);
        super.setItemIconGravity(i);
        getNavigationRailMenuView().setItemSpacing(i2);
        getNavigationRailMenuView().setItemMinimumHeight(i3);
        getNavigationRailMenuView().setExpanded(z);
    }

    public void expand() {
        if (this.expanded) {
            return;
        }
        setExpanded(true);
        announceForAccessibility(getResources().getString(C1349R.string.nav_rail_expanded_a11y_label));
    }

    public boolean isExpanded() {
        return this.expanded;
    }

    public void collapse() {
        if (this.expanded) {
            setExpanded(false);
            announceForAccessibility(getResources().getString(C1349R.string.nav_rail_collapsed_a11y_label));
        }
    }

    private void applyWindowInsets() {
        ViewUtils.doOnApplyWindowInsets(this, new ViewUtils.OnApplyWindowInsetsListener() { // from class: com.google.android.material.navigationrail.NavigationRailView.1
            @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
            public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat, ViewUtils.RelativePadding relativePadding) {
                Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars());
                Insets insets2 = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.displayCutout());
                NavigationRailView navigationRailView = NavigationRailView.this;
                if (navigationRailView.shouldApplyWindowInsetPadding(navigationRailView.paddingTopSystemWindowInsets)) {
                    relativePadding.top += insets.top;
                }
                NavigationRailView navigationRailView2 = NavigationRailView.this;
                if (navigationRailView2.shouldApplyWindowInsetPadding(navigationRailView2.paddingBottomSystemWindowInsets)) {
                    relativePadding.bottom += insets.bottom;
                }
                NavigationRailView navigationRailView3 = NavigationRailView.this;
                if (navigationRailView3.shouldApplyWindowInsetPadding(navigationRailView3.paddingStartSystemWindowInsets)) {
                    if (ViewUtils.isLayoutRtl(view)) {
                        relativePadding.start += Math.max(insets.right, insets2.right);
                    } else {
                        relativePadding.start += Math.max(insets.left, insets2.left);
                    }
                }
                relativePadding.applyToView(view);
                return windowInsetsCompat;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldApplyWindowInsetPadding(Boolean bool) {
        return bool != null ? bool.booleanValue() : getFitsSystemWindows();
    }

    private int getMaxChildWidth() {
        int childCount = getNavigationRailMenuView().getChildCount();
        int iMax = 0;
        for (int i = 0; i < childCount; i++) {
            View childAt = getNavigationRailMenuView().getChildAt(i);
            if (childAt.getVisibility() != 8 && !(childAt instanceof NavigationBarDividerView)) {
                iMax = Math.max(iMax, childAt.getMeasuredWidth());
            }
        }
        return iMax;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int iMakeMinWidthSpec = makeMinWidthSpec(i);
        if (this.expanded) {
            measureChild(getNavigationRailMenuView(), i, i2);
            View view = this.headerView;
            if (view != null) {
                measureChild(view, i, i2);
            }
            iMakeMinWidthSpec = makeExpandedWidthMeasureSpec(i, getMaxChildWidth());
            if (getItemActiveIndicatorExpandedWidth() == -1) {
                getNavigationRailMenuView().updateActiveIndicator(View.MeasureSpec.getSize(iMakeMinWidthSpec));
            }
        }
        super.onMeasure(iMakeMinWidthSpec, i2);
        if (this.contentContainer.getMeasuredHeight() < getMeasuredHeight()) {
            measureChild(this.contentContainer, iMakeMinWidthSpec, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), TLObject.FLAG_30));
        }
    }

    public void addHeaderView(int i) {
        addHeaderView(LayoutInflater.from(getContext()).inflate(i, (ViewGroup) this, false));
    }

    public void addHeaderView(View view) {
        removeHeaderView();
        this.headerView = view;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 49;
        layoutParams.bottomMargin = this.headerMarginBottom;
        this.contentContainer.addView(view, 0, layoutParams);
    }

    public View getHeaderView() {
        return this.headerView;
    }

    public void removeHeaderView() {
        View view = this.headerView;
        if (view != null) {
            this.contentContainer.removeView(view);
            this.headerView = null;
        }
    }

    public void setMenuGravity(int i) {
        getNavigationRailMenuView().setMenuGravity(i);
    }

    public int getMenuGravity() {
        return getNavigationRailMenuView().getMenuGravity();
    }

    public int getItemMinimumHeight() {
        return getNavigationRailMenuView().getItemMinimumHeight();
    }

    public void setItemMinimumHeight(int i) {
        this.collapsedItemMinHeight = i;
        this.expandedItemMinHeight = i;
        ((NavigationRailMenuView) getMenuView()).setItemMinimumHeight(i);
    }

    public void setCollapsedItemMinimumHeight(int i) {
        this.collapsedItemMinHeight = i;
        if (this.expanded) {
            return;
        }
        ((NavigationRailMenuView) getMenuView()).setItemMinimumHeight(i);
    }

    public int getCollapsedItemMinimumHeight() {
        return this.collapsedItemMinHeight;
    }

    public void setExpandedItemMinimumHeight(int i) {
        this.expandedItemMinHeight = i;
        if (this.expanded) {
            ((NavigationRailMenuView) getMenuView()).setItemMinimumHeight(i);
        }
    }

    public int getExpandedItemMinimumHeight() {
        return this.expandedItemMinHeight;
    }

    public void setSubmenuDividersEnabled(boolean z) {
        if (this.submenuDividersEnabled == z) {
            return;
        }
        this.submenuDividersEnabled = z;
        getNavigationRailMenuView().setSubmenuDividersEnabled(z);
    }

    public boolean getSubmenuDividersEnabled() {
        return this.submenuDividersEnabled;
    }

    public void setItemSpacing(int i) {
        this.collapsedItemSpacing = i;
        this.expandedItemSpacing = i;
        getNavigationRailMenuView().setItemSpacing(i);
    }

    public void setCollapsedItemSpacing(int i) {
        this.collapsedItemSpacing = i;
        if (this.expanded) {
            return;
        }
        getNavigationRailMenuView().setItemSpacing(i);
    }

    public int getItemSpacing() {
        return getNavigationRailMenuView().getItemSpacing();
    }

    private NavigationRailMenuView getNavigationRailMenuView() {
        return (NavigationRailMenuView) getMenuView();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.navigation.NavigationBarView
    public NavigationRailMenuView createNavigationBarMenuView(Context context) {
        return new NavigationRailMenuView(context);
    }

    private int makeMinWidthSpec(int i) {
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        if (View.MeasureSpec.getMode(i) == 1073741824 || suggestedMinimumWidth <= 0) {
            return i;
        }
        return View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i), suggestedMinimumWidth + getPaddingLeft() + getPaddingRight()), TLObject.FLAG_30);
    }

    private int makeExpandedWidthMeasureSpec(int i, int i2) {
        int iMin = Math.min(this.minExpandedWidth, View.MeasureSpec.getSize(i));
        if (View.MeasureSpec.getMode(i) == 1073741824) {
            return i;
        }
        int iMax = Math.max(i2, iMin);
        View view = this.headerView;
        if (view != null) {
            iMax = Math.max(iMax, view.getMeasuredWidth());
        }
        return View.MeasureSpec.makeMeasureSpec(Math.max(getSuggestedMinimumWidth(), Math.min(iMax, this.maxExpandedWidth)), TLObject.FLAG_30);
    }

    private void addContentContainer() {
        View view = (View) getMenuView();
        NavigationRailFrameLayout navigationRailFrameLayout = new NavigationRailFrameLayout(getContext());
        this.contentContainer = navigationRailFrameLayout;
        navigationRailFrameLayout.setPaddingTop(this.contentMarginTop);
        this.contentContainer.setScrollingEnabled(this.scrollingEnabled);
        this.contentContainer.setClipChildren(false);
        this.contentContainer.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        view.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        this.contentContainer.addView(view);
        if (!this.scrollingEnabled) {
            addView(this.contentContainer);
            return;
        }
        ScrollView scrollView = new ScrollView(getContext());
        scrollView.setVerticalScrollBarEnabled(false);
        scrollView.addView(this.contentContainer);
        scrollView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(scrollView);
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }
}
