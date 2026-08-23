package com.google.android.material.navigationrail;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.material.navigation.NavigationBarItemView;
import com.google.android.material.navigation.NavigationBarMenuView;

/* JADX INFO: loaded from: classes5.dex */
public class NavigationRailMenuView extends NavigationBarMenuView {
    private int itemMinimumHeight;
    private int itemSpacing;
    private final FrameLayout.LayoutParams layoutParams;

    public NavigationRailMenuView(Context context) {
        super(context);
        this.itemMinimumHeight = -1;
        this.itemSpacing = 0;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        this.layoutParams = layoutParams;
        layoutParams.gravity = 49;
        setLayoutParams(layoutParams);
        setItemActiveIndicatorResizeable(true);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int iMeasureSharedChildHeights;
        int size = View.MeasureSpec.getSize(i2);
        int currentVisibleContentItemCount = getCurrentVisibleContentItemCount();
        if (currentVisibleContentItemCount > 1 && isShifting(getLabelVisibilityMode(), currentVisibleContentItemCount)) {
            iMeasureSharedChildHeights = measureShiftingChildHeights(i, size, currentVisibleContentItemCount);
        } else {
            iMeasureSharedChildHeights = measureSharedChildHeights(i, size, currentVisibleContentItemCount, null);
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i), View.resolveSizeAndState(iMeasureSharedChildHeights, i2, 0));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int i5 = i3 - i;
        int i6 = 0;
        int measuredHeight = 0;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                measuredHeight += childAt.getMeasuredHeight();
                i6++;
            }
        }
        int iMax = i6 <= 1 ? 0 : Math.max(0, Math.min((getMeasuredHeight() - measuredHeight) / (i6 - 1), this.itemSpacing));
        int i8 = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt2 = getChildAt(i9);
            if (childAt2.getVisibility() != 8) {
                int measuredHeight2 = childAt2.getMeasuredHeight();
                childAt2.layout(0, i8, i5, measuredHeight2 + i8);
                i8 += measuredHeight2 + iMax;
            }
        }
    }

    @Override // com.google.android.material.navigation.NavigationBarMenuView
    protected NavigationBarItemView createNavigationBarItemView(Context context) {
        return new NavigationRailItemView(context);
    }

    private int makeSharedHeightSpec(int i, int i2, int i3) {
        int iMax = i2 / Math.max(1, i3);
        int size = this.itemMinimumHeight;
        if (size == -1) {
            size = View.MeasureSpec.getSize(i);
        }
        return View.MeasureSpec.makeMeasureSpec(Math.min(size, iMax), 0);
    }

    private int measureShiftingChildHeights(int i, int i2, int i3) {
        int iMeasureChildHeight;
        View childAt = getChildAt(getSelectedItemPosition());
        if (childAt != null) {
            iMeasureChildHeight = measureChildHeight(childAt, i, makeSharedHeightSpec(i, i2, i3));
            i2 -= iMeasureChildHeight;
            i3--;
        } else {
            iMeasureChildHeight = 0;
        }
        return iMeasureChildHeight + measureSharedChildHeights(i, i2, i3, childAt);
    }

    private int measureSharedChildHeights(int i, int i2, int i3, View view) {
        int iMakeMeasureSpec;
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i2, 0);
        int childCount = getChildCount();
        int iMeasureChildHeight = 0;
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (!(childAt instanceof NavigationBarItemView)) {
                int iMeasureChildHeight2 = measureChildHeight(childAt, i, iMakeMeasureSpec2);
                i2 -= iMeasureChildHeight2;
                iMeasureChildHeight += iMeasureChildHeight2;
            }
        }
        int iMax = Math.max(i2, 0);
        if (view == null) {
            iMakeMeasureSpec = makeSharedHeightSpec(i, iMax, i3);
        } else {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 0);
        }
        int i5 = 0;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt2 = getChildAt(i6);
            if (childAt2.getVisibility() == 0) {
                i5++;
            }
            if ((childAt2 instanceof NavigationBarItemView) && childAt2 != view) {
                iMeasureChildHeight += measureChildHeight(childAt2, i, iMakeMeasureSpec);
            }
        }
        return iMeasureChildHeight + (Math.max(0, i5 - 1) * this.itemSpacing);
    }

    private int measureChildHeight(View view, int i, int i2) {
        view.measure(i, i2);
        if (view.getVisibility() != 8) {
            return view.getMeasuredHeight();
        }
        return 0;
    }

    void setMenuGravity(int i) {
        FrameLayout.LayoutParams layoutParams = this.layoutParams;
        if (layoutParams.gravity != i) {
            layoutParams.gravity = i;
            setLayoutParams(layoutParams);
        }
    }

    int getMenuGravity() {
        return this.layoutParams.gravity;
    }

    public void setItemMinimumHeight(int i) {
        if (this.itemMinimumHeight != i) {
            this.itemMinimumHeight = i;
            requestLayout();
        }
    }

    public int getItemMinimumHeight() {
        return this.itemMinimumHeight;
    }

    public void setItemSpacing(int i) {
        if (this.itemSpacing != i) {
            this.itemSpacing = i;
            requestLayout();
        }
    }

    public int getItemSpacing() {
        return this.itemSpacing;
    }
}
