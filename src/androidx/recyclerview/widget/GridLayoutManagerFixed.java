package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class GridLayoutManagerFixed extends GridLayoutManager {
    private ArrayList<View> additionalViews;
    private boolean canScrollVertically;

    public abstract boolean hasSiblingChild(int i);

    public abstract boolean shouldLayoutChildFromOpositeSide(View view);

    public GridLayoutManagerFixed(Context context, int i, int i2, boolean z) {
        super(context, i, i2, z);
        this.additionalViews = new ArrayList<>(4);
        this.canScrollVertically = true;
    }

    public void setCanScrollVertically(boolean z) {
        this.canScrollVertically = z;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return this.canScrollVertically;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void recycleViewsFromStart(RecyclerView.Recycler recycler, int i, int i2) {
        if (i < 0) {
            return;
        }
        int childCount = getChildCount();
        if (!this.mShouldReverseLayout) {
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getBottom() + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) childAt.getLayoutParams())).bottomMargin > i || childAt.getTop() + childAt.getHeight() > i) {
                    recycleChildren(recycler, 0, i3);
                    return;
                }
            }
            return;
        }
        int i4 = childCount - 1;
        for (int i5 = i4; i5 >= 0; i5--) {
            View childAt2 = getChildAt(i5);
            if (childAt2.getBottom() + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) childAt2.getLayoutParams())).bottomMargin > i || childAt2.getTop() + childAt2.getHeight() > i) {
                recycleChildren(recycler, i4, i5);
                return;
            }
        }
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager
    public int[] calculateItemBorders(int[] iArr, int i, int i2) {
        if (iArr == null || iArr.length != i + 1 || iArr[iArr.length - 1] != i2) {
            iArr = new int[i + 1];
        }
        iArr[0] = 0;
        for (int i3 = 1; i3 <= i; i3++) {
            iArr[i3] = (int) Math.ceil((i3 / i) * i2);
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager
    public void measureChild(View view, int i, boolean z) {
        GridLayoutManager.LayoutParams layoutParams = (GridLayoutManager.LayoutParams) view.getLayoutParams();
        Rect rect = layoutParams.mDecorInsets;
        int i2 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        measureChildWithDecorationsAndMargin(view, RecyclerView.LayoutManager.getChildMeasureSpec(this.mCachedBorders[layoutParams.mSpanSize], i, rect.left + rect.right + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, ((ViewGroup.MarginLayoutParams) layoutParams).width, false), RecyclerView.LayoutManager.getChildMeasureSpec(this.mOrientationHelper.getTotalSpace(), getHeightMode(), i2, ((ViewGroup.MarginLayoutParams) layoutParams).height, true), z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0193 A[PHI: r5
  0x0193: PHI (r5v4 int) = (r5v1 int), (r5v9 int) binds: [B:87:0x0191, B:82:0x0188] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v35 */
    /* JADX WARN: Type inference failed for: r2v38 */
    /* JADX WARN: Type inference failed for: r6v17 */
    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void layoutChunk(RecyclerView.Recycler recycler, RecyclerView.State state, LinearLayoutManager.LayoutState layoutState, LinearLayoutManager.LayoutChunkResult layoutChunkResult) {
        View[] viewArr;
        int i;
        int i2;
        int i3;
        int width;
        int i4;
        int i5;
        int width2;
        int i6;
        int i7;
        boolean z;
        View next;
        GridLayoutManagerFixed gridLayoutManagerFixed = this;
        RecyclerView.Recycler recycler2 = recycler;
        int modeInOther = gridLayoutManagerFixed.mOrientationHelper.getModeInOther();
        boolean z2 = false;
        ?? r12 = 1;
        boolean z3 = layoutState.mItemDirection == 1;
        layoutChunkResult.mConsumed = 0;
        int i8 = layoutState.mCurrentPosition;
        int i9 = -1;
        if (gridLayoutManagerFixed.mShouldReverseLayout && layoutState.mLayoutDirection != -1 && gridLayoutManagerFixed.hasSiblingChild(i8) && gridLayoutManagerFixed.findViewByPosition(layoutState.mCurrentPosition + 1) == null) {
            boolean zHasSiblingChild = gridLayoutManagerFixed.hasSiblingChild(layoutState.mCurrentPosition + 1);
            int i10 = layoutState.mCurrentPosition;
            if (zHasSiblingChild) {
                layoutState.mCurrentPosition = i10 + 3;
            } else {
                layoutState.mCurrentPosition = i10 + 2;
            }
            int i11 = layoutState.mCurrentPosition;
            for (int i12 = i11; i12 > i8; i12--) {
                View next2 = layoutState.next(recycler2);
                if (next2 != null) {
                    gridLayoutManagerFixed.additionalViews.add(next2);
                    if (i12 != i11) {
                        gridLayoutManagerFixed.calculateItemDecorationsForChild(next2, gridLayoutManagerFixed.mDecorInsets);
                        gridLayoutManagerFixed.measureChild(next2, modeInOther, false);
                        int decoratedMeasurement = gridLayoutManagerFixed.mOrientationHelper.getDecoratedMeasurement(next2);
                        layoutState.mOffset -= decoratedMeasurement;
                        layoutState.mAvailable += decoratedMeasurement;
                    }
                }
            }
            layoutState.mCurrentPosition = i11;
        }
        ?? r1 = 1;
        while (r1 != 0) {
            int spanSize = gridLayoutManagerFixed.mSpanCount;
            ?? r15 = (gridLayoutManagerFixed.additionalViews.isEmpty() ? 1 : 0) ^ r12;
            int i13 = z2 ? 1 : 0;
            while (i13 < gridLayoutManagerFixed.mSpanCount && layoutState.hasMore(state) && spanSize > 0) {
                int i14 = layoutState.mCurrentPosition;
                spanSize -= gridLayoutManagerFixed.getSpanSize(recycler2, state, i14);
                if (spanSize < 0) {
                    break;
                }
                if (!gridLayoutManagerFixed.additionalViews.isEmpty()) {
                    next = gridLayoutManagerFixed.additionalViews.get(z2 ? 1 : 0);
                    gridLayoutManagerFixed.additionalViews.remove(z2 ? 1 : 0);
                    layoutState.mCurrentPosition -= r12;
                } else {
                    next = layoutState.next(recycler2);
                }
                if (next == null) {
                    break;
                }
                gridLayoutManagerFixed.mSet[i13 == true ? 1 : 0] = next;
                i13 = (i13 == true ? 1 : 0) + 1;
                if (layoutState.mLayoutDirection == i9 && spanSize <= 0 && gridLayoutManagerFixed.hasSiblingChild(i14)) {
                    r15 = r12;
                }
            }
            if (i13 == 0) {
                layoutChunkResult.mFinished = r12;
                return;
            }
            gridLayoutManagerFixed.assignSpans(recycler2, state, i13 == true ? 1 : 0, z3);
            float f = 0.0f;
            int i15 = z2 ? 1 : 0;
            int i16 = i15;
            while (i15 < i13) {
                View view = gridLayoutManagerFixed.mSet[i15];
                if (layoutState.mScrapList == null) {
                    if (z3) {
                        gridLayoutManagerFixed.addView(view);
                    } else {
                        gridLayoutManagerFixed.addView(view, z2 ? 1 : 0);
                    }
                } else if (z3) {
                    gridLayoutManagerFixed.addDisappearingView(view);
                } else {
                    gridLayoutManagerFixed.addDisappearingView(view, z2 ? 1 : 0);
                }
                gridLayoutManagerFixed.calculateItemDecorationsForChild(view, gridLayoutManagerFixed.mDecorInsets);
                gridLayoutManagerFixed.measureChild(view, modeInOther, z2);
                int decoratedMeasurement2 = gridLayoutManagerFixed.mOrientationHelper.getDecoratedMeasurement(view);
                if (decoratedMeasurement2 > i16) {
                    i16 = decoratedMeasurement2;
                }
                float decoratedMeasurementInOther = (gridLayoutManagerFixed.mOrientationHelper.getDecoratedMeasurementInOther(view) * 1.0f) / ((GridLayoutManager.LayoutParams) view.getLayoutParams()).mSpanSize;
                if (decoratedMeasurementInOther > f) {
                    f = decoratedMeasurementInOther;
                }
                i15++;
            }
            int i17 = z2 ? 1 : 0;
            while (true) {
                viewArr = gridLayoutManagerFixed.mSet;
                if (i17 >= i13) {
                    break;
                }
                View view2 = viewArr[i17];
                if (gridLayoutManagerFixed.mOrientationHelper.getDecoratedMeasurement(view2) != i16) {
                    GridLayoutManager.LayoutParams layoutParams = (GridLayoutManager.LayoutParams) view2.getLayoutParams();
                    Rect rect = layoutParams.mDecorInsets;
                    i7 = i17;
                    z = false;
                    gridLayoutManagerFixed.measureChildWithDecorationsAndMargin(view2, RecyclerView.LayoutManager.getChildMeasureSpec(gridLayoutManagerFixed.mCachedBorders[layoutParams.mSpanSize], TLObject.FLAG_30, rect.left + rect.right + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, ((ViewGroup.MarginLayoutParams) layoutParams).width, false), View.MeasureSpec.makeMeasureSpec((i16 == true ? 1 : 0) - (((rect.top + rect.bottom) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin), TLObject.FLAG_30), true);
                } else {
                    i7 = i17;
                    z = z2;
                }
                i17 = i7 + 1;
                z2 = z;
            }
            boolean z4 = z2;
            boolean zShouldLayoutChildFromOpositeSide = gridLayoutManagerFixed.shouldLayoutChildFromOpositeSide(viewArr[z4 ? 1 : 0]);
            if (zShouldLayoutChildFromOpositeSide) {
                i = -1;
                if (layoutState.mLayoutDirection == -1) {
                    int i18 = layoutState.mLayoutDirection;
                    int i19 = layoutState.mOffset;
                    if (i18 == i) {
                        int i20 = i19 - layoutChunkResult.mConsumed;
                        i6 = i20;
                        i5 = i20 - (i16 == true ? 1 : 0);
                        width2 = z4 ? 1 : 0;
                    } else {
                        int i21 = layoutChunkResult.mConsumed + i19;
                        int i22 = i21 + (i16 == true ? 1 : 0);
                        i5 = i21;
                        width2 = gridLayoutManagerFixed.getWidth();
                        i6 = i22;
                    }
                    int i23 = (i13 == true ? 1 : 0) - 1;
                    while (i23 >= 0) {
                        View view3 = gridLayoutManagerFixed.mSet[i23];
                        GridLayoutManager.LayoutParams layoutParams2 = (GridLayoutManager.LayoutParams) view3.getLayoutParams();
                        int decoratedMeasurementInOther2 = gridLayoutManagerFixed.mOrientationHelper.getDecoratedMeasurementInOther(view3);
                        if (layoutState.mLayoutDirection == 1) {
                            width2 -= decoratedMeasurementInOther2;
                        }
                        int i24 = decoratedMeasurementInOther2 + width2;
                        int i25 = width2;
                        gridLayoutManagerFixed = this;
                        int i26 = i16;
                        gridLayoutManagerFixed.layoutDecoratedWithMargins(view3, i25 == true ? 1 : 0, i5, i24, i6);
                        width2 = layoutState.mLayoutDirection == -1 ? i24 : i25 == true ? 1 : 0;
                        if (layoutParams2.isItemRemoved() || layoutParams2.isItemChanged()) {
                            layoutChunkResult.mIgnoreConsumed = true;
                        }
                        layoutChunkResult.mFocusable |= view3.hasFocusable();
                        i23--;
                        i16 = i26 == true ? 1 : 0;
                    }
                    i4 = i16;
                }
                layoutChunkResult.mConsumed += i4;
                Arrays.fill(gridLayoutManagerFixed.mSet, (Object) null);
                recycler2 = recycler;
                r12 = 1;
                r1 = r15 == true ? 1 : 0;
                z2 = false;
                i9 = -1;
            } else {
                i = -1;
            }
            if (zShouldLayoutChildFromOpositeSide || layoutState.mLayoutDirection != 1) {
                int i27 = i16 == true ? 1 : 0;
                int i28 = layoutState.mLayoutDirection;
                int i29 = layoutState.mOffset;
                if (i28 == -1) {
                    i3 = i29 - layoutChunkResult.mConsumed;
                    i2 = i3 - (i27 == true ? 1 : 0);
                    width = gridLayoutManagerFixed.getWidth();
                } else {
                    i2 = layoutChunkResult.mConsumed + i29;
                    i3 = i2 + (i27 == true ? 1 : 0);
                    width = 0;
                }
                int i30 = i3;
                int i31 = i2;
                int i32 = 0;
                while (i32 < i13) {
                    View view4 = gridLayoutManagerFixed.mSet[i32];
                    GridLayoutManager.LayoutParams layoutParams3 = (GridLayoutManager.LayoutParams) view4.getLayoutParams();
                    int decoratedMeasurementInOther3 = gridLayoutManagerFixed.mOrientationHelper.getDecoratedMeasurementInOther(view4);
                    int i33 = i27;
                    if (layoutState.mLayoutDirection == -1) {
                        width -= decoratedMeasurementInOther3;
                    }
                    int i34 = decoratedMeasurementInOther3 + width;
                    int i35 = i13;
                    int i36 = width;
                    width = i34;
                    gridLayoutManagerFixed = this;
                    gridLayoutManagerFixed.layoutDecoratedWithMargins(view4, i36, i31, width, i30);
                    if (layoutState.mLayoutDirection != 1) {
                        width = i36;
                    }
                    if (layoutParams3.isItemRemoved() || layoutParams3.isItemChanged()) {
                        layoutChunkResult.mIgnoreConsumed = true;
                    }
                    layoutChunkResult.mFocusable |= view4.hasFocusable();
                    i32++;
                    i13 = i35 == true ? 1 : 0;
                    i27 = i33 == true ? 1 : 0;
                }
                i4 = i27;
            }
            layoutChunkResult.mConsumed += i4;
            Arrays.fill(gridLayoutManagerFixed.mSet, (Object) null);
            recycler2 = recycler;
            r12 = 1;
            r1 = r15 == true ? 1 : 0;
            z2 = false;
            i9 = -1;
        }
    }
}
