package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.C1349R;

/* JADX INFO: loaded from: classes5.dex */
public class FlowLayout extends ViewGroup {
    private int itemSpacing;
    private int lineSpacing;
    private int rowCount;
    private boolean singleLine;

    public FlowLayout(Context context) {
        this(context, null);
    }

    public FlowLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FlowLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.singleLine = false;
        loadFromAttributes(context, attributeSet);
    }

    public FlowLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.singleLine = false;
        loadFromAttributes(context, attributeSet);
    }

    private void loadFromAttributes(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C1349R.styleable.FlowLayout, 0, 0);
        this.lineSpacing = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1349R.styleable.FlowLayout_lineSpacing, 0);
        this.itemSpacing = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1349R.styleable.FlowLayout_horizontalItemSpacing, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    protected int getLineSpacing() {
        return this.lineSpacing;
    }

    protected void setLineSpacing(int i) {
        this.lineSpacing = i;
    }

    protected int getItemSpacing() {
        return this.itemSpacing;
    }

    protected void setItemSpacing(int i) {
        this.itemSpacing = i;
    }

    public boolean isSingleLine() {
        return this.singleLine;
    }

    public void setSingleLine(boolean z) {
        this.singleLine = z;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int paddingLeft;
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        int i5 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size : Integer.MAX_VALUE;
        int paddingLeft2 = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = i5 - getPaddingRight();
        int i6 = paddingTop;
        int i7 = 0;
        for (int i8 = 0; i8 < getChildCount(); i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, i, i2);
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    i3 = marginLayoutParams.leftMargin;
                    i4 = marginLayoutParams.rightMargin;
                } else {
                    i3 = 0;
                    i4 = 0;
                }
                int i9 = paddingLeft2;
                if (paddingLeft2 + i3 + childAt.getMeasuredWidth() <= paddingRight || isSingleLine()) {
                    paddingLeft = i9;
                } else {
                    paddingLeft = getPaddingLeft();
                    i6 = this.lineSpacing + paddingTop;
                }
                int measuredWidth = paddingLeft + i3 + childAt.getMeasuredWidth();
                int measuredHeight = i6 + childAt.getMeasuredHeight();
                if (measuredWidth > i7) {
                    i7 = measuredWidth;
                }
                paddingLeft2 = paddingLeft + i3 + i4 + childAt.getMeasuredWidth() + this.itemSpacing;
                if (i8 == getChildCount() - 1) {
                    i7 += i4;
                }
                paddingTop = measuredHeight;
            }
        }
        setMeasuredDimension(getMeasuredDimension(size, mode, i7 + getPaddingRight()), getMeasuredDimension(size2, mode2, paddingTop + getPaddingBottom()));
    }

    private static int getMeasuredDimension(int i, int i2, int i3) {
        if (i2 != Integer.MIN_VALUE) {
            return i2 != 1073741824 ? i3 : i;
        }
        return Math.min(i3, i);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int marginEnd;
        int marginStart;
        boolean z2;
        if (getChildCount() == 0) {
            this.rowCount = 0;
            return;
        }
        boolean z3 = true;
        this.rowCount = 1;
        boolean z4 = getLayoutDirection() == 1;
        int paddingRight = z4 ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = z4 ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int i5 = 0;
        int measuredWidth = paddingRight;
        int i6 = paddingTop;
        while (i5 < getChildCount()) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() == 8) {
                childAt.setTag(C1349R.id.row_index_key, -1);
                z2 = z3;
            } else {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    marginStart = marginLayoutParams.getMarginStart();
                    marginEnd = marginLayoutParams.getMarginEnd();
                } else {
                    marginEnd = 0;
                    marginStart = 0;
                }
                int measuredWidth2 = measuredWidth + marginStart + childAt.getMeasuredWidth();
                int i7 = i3 - i;
                int i8 = i7 - paddingLeft;
                z2 = z3;
                if (!this.singleLine && measuredWidth2 > i8) {
                    measuredWidth2 = paddingRight + marginStart + childAt.getMeasuredWidth();
                    i6 = paddingTop + this.lineSpacing;
                    this.rowCount++;
                    measuredWidth = paddingRight;
                }
                childAt.setTag(C1349R.id.row_index_key, Integer.valueOf(this.rowCount - 1));
                int measuredHeight = childAt.getMeasuredHeight() + i6;
                if (z4) {
                    childAt.layout(i7 - measuredWidth2, i6, (i7 - measuredWidth) - marginStart, measuredHeight);
                } else {
                    childAt.layout(measuredWidth + marginStart, i6, measuredWidth2, measuredHeight);
                }
                measuredWidth += marginStart + marginEnd + childAt.getMeasuredWidth() + this.itemSpacing;
                paddingTop = measuredHeight;
            }
            i5++;
            z3 = z2;
        }
    }

    protected int getRowCount() {
        return this.rowCount;
    }

    public int getRowIndex(View view) {
        Object tag = view.getTag(C1349R.id.row_index_key);
        if (tag instanceof Integer) {
            return ((Integer) tag).intValue();
        }
        return -1;
    }
}
