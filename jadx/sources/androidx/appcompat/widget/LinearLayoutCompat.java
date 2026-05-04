package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import androidx.appcompat.R$styleable;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes3.dex */
public abstract class LinearLayoutCompat extends ViewGroup {
    private static final String ACCESSIBILITY_CLASS_NAME = "androidx.appcompat.widget.LinearLayoutCompat";
    public static final int HORIZONTAL = 0;
    private static final int INDEX_BOTTOM = 2;
    private static final int INDEX_CENTER_VERTICAL = 0;
    private static final int INDEX_FILL = 3;
    private static final int INDEX_TOP = 1;
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    public static final int VERTICAL = 1;
    private static final int VERTICAL_GRAVITY_COUNT = 4;
    private boolean mBaselineAligned;
    private int mBaselineAlignedChildIndex;
    private int mBaselineChildTop;
    private Drawable mDivider;
    private int mDividerHeight;
    private int mDividerPadding;
    private int mDividerWidth;
    private int mGravity;
    private int[] mMaxAscent;
    private int[] mMaxDescent;
    private int mOrientation;
    private int mShowDividers;
    private int mTotalLength;
    private boolean mUseLargestChild;
    private float mWeightSum;

    int getChildrenSkipCount(View view, int i) {
        return 0;
    }

    int getLocationOffset(View view) {
        return 0;
    }

    int getNextLocationOffset(View view) {
        return 0;
    }

    int measureNullChild(int i) {
        return 0;
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mBaselineAligned = true;
        this.mBaselineAlignedChildIndex = -1;
        this.mBaselineChildTop = 0;
        this.mGravity = 8388659;
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, R$styleable.LinearLayoutCompat, i, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, R$styleable.LinearLayoutCompat, attributeSet, tintTypedArrayObtainStyledAttributes.getWrappedTypeArray(), i, 0);
        int i2 = tintTypedArrayObtainStyledAttributes.getInt(R$styleable.LinearLayoutCompat_android_orientation, -1);
        if (i2 >= 0) {
            setOrientation(i2);
        }
        int i3 = tintTypedArrayObtainStyledAttributes.getInt(R$styleable.LinearLayoutCompat_android_gravity, -1);
        if (i3 >= 0) {
            setGravity(i3);
        }
        boolean z = tintTypedArrayObtainStyledAttributes.getBoolean(R$styleable.LinearLayoutCompat_android_baselineAligned, true);
        if (!z) {
            setBaselineAligned(z);
        }
        this.mWeightSum = tintTypedArrayObtainStyledAttributes.getFloat(R$styleable.LinearLayoutCompat_android_weightSum, -1.0f);
        this.mBaselineAlignedChildIndex = tintTypedArrayObtainStyledAttributes.getInt(R$styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.mUseLargestChild = tintTypedArrayObtainStyledAttributes.getBoolean(R$styleable.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(R$styleable.LinearLayoutCompat_divider));
        this.mShowDividers = tintTypedArrayObtainStyledAttributes.getInt(R$styleable.LinearLayoutCompat_showDividers, 0);
        this.mDividerPadding = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.LinearLayoutCompat_dividerPadding, 0);
        tintTypedArrayObtainStyledAttributes.recycle();
    }

    public void setShowDividers(int i) {
        if (i != this.mShowDividers) {
            requestLayout();
        }
        this.mShowDividers = i;
    }

    public int getShowDividers() {
        return this.mShowDividers;
    }

    public Drawable getDividerDrawable() {
        return this.mDivider;
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.mDivider) {
            return;
        }
        this.mDivider = drawable;
        if (drawable != null) {
            this.mDividerWidth = drawable.getIntrinsicWidth();
            this.mDividerHeight = drawable.getIntrinsicHeight();
        } else {
            this.mDividerWidth = 0;
            this.mDividerHeight = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    public void setDividerPadding(int i) {
        this.mDividerPadding = i;
    }

    public int getDividerPadding() {
        return this.mDividerPadding;
    }

    public int getDividerWidth() {
        return this.mDividerWidth;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.mDivider == null) {
            return;
        }
        if (this.mOrientation == 1) {
            drawDividersVertical(canvas);
        } else {
            drawDividersHorizontal(canvas);
        }
    }

    void drawDividersVertical(Canvas canvas) {
        int bottom;
        int virtualChildCount = getVirtualChildCount();
        for (int i = 0; i < virtualChildCount; i++) {
            View virtualChildAt = getVirtualChildAt(i);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i)) {
                drawHorizontalDivider(canvas, (virtualChildAt.getTop() - ((LinearLayout.LayoutParams) ((LayoutParams) virtualChildAt.getLayoutParams())).topMargin) - this.mDividerHeight);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            if (virtualChildAt2 == null) {
                bottom = (getHeight() - getPaddingBottom()) - this.mDividerHeight;
            } else {
                bottom = virtualChildAt2.getBottom() + ((LinearLayout.LayoutParams) ((LayoutParams) virtualChildAt2.getLayoutParams())).bottomMargin;
            }
            drawHorizontalDivider(canvas, bottom);
        }
    }

    void drawDividersHorizontal(Canvas canvas) {
        int right;
        int left;
        int i;
        int left2;
        int virtualChildCount = getVirtualChildCount();
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
        for (int i2 = 0; i2 < virtualChildCount; i2++) {
            View virtualChildAt = getVirtualChildAt(i2);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i2)) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (zIsLayoutRtl) {
                    left2 = virtualChildAt.getRight() + ((LinearLayout.LayoutParams) layoutParams).rightMargin;
                } else {
                    left2 = (virtualChildAt.getLeft() - ((LinearLayout.LayoutParams) layoutParams).leftMargin) - this.mDividerWidth;
                }
                drawVerticalDivider(canvas, left2);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            if (virtualChildAt2 != null) {
                LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                if (zIsLayoutRtl) {
                    left = virtualChildAt2.getLeft() - ((LinearLayout.LayoutParams) layoutParams2).leftMargin;
                    i = this.mDividerWidth;
                    right = left - i;
                } else {
                    right = virtualChildAt2.getRight() + ((LinearLayout.LayoutParams) layoutParams2).rightMargin;
                }
            } else if (zIsLayoutRtl) {
                right = getPaddingLeft();
            } else {
                left = getWidth() - getPaddingRight();
                i = this.mDividerWidth;
                right = left - i;
            }
            drawVerticalDivider(canvas, right);
        }
    }

    void drawHorizontalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(getPaddingLeft() + this.mDividerPadding, i, (getWidth() - getPaddingRight()) - this.mDividerPadding, this.mDividerHeight + i);
        this.mDivider.draw(canvas);
    }

    void drawVerticalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(i, getPaddingTop() + this.mDividerPadding, this.mDividerWidth + i, (getHeight() - getPaddingBottom()) - this.mDividerPadding);
        this.mDivider.draw(canvas);
    }

    public boolean isBaselineAligned() {
        return this.mBaselineAligned;
    }

    public void setBaselineAligned(boolean z) {
        this.mBaselineAligned = z;
    }

    public boolean isMeasureWithLargestChildEnabled() {
        return this.mUseLargestChild;
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.mUseLargestChild = z;
    }

    @Override // android.view.View
    public int getBaseline() {
        int i;
        if (this.mBaselineAlignedChildIndex < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i2 = this.mBaselineAlignedChildIndex;
        if (childCount <= i2) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(i2);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.mBaselineAlignedChildIndex == 0) {
                return -1;
            }
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        int bottom = this.mBaselineChildTop;
        if (this.mOrientation == 1 && (i = this.mGravity & 112) != 48) {
            if (i == 16) {
                bottom += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.mTotalLength) / 2;
            } else if (i == 80) {
                bottom = ((getBottom() - getTop()) - getPaddingBottom()) - this.mTotalLength;
            }
        }
        return bottom + ((LinearLayout.LayoutParams) ((LayoutParams) childAt.getLayoutParams())).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.mBaselineAlignedChildIndex;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i < 0 || i >= getChildCount()) {
            throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
        }
        this.mBaselineAlignedChildIndex = i;
    }

    View getVirtualChildAt(int i) {
        return getChildAt(i);
    }

    int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.mWeightSum;
    }

    public void setWeightSum(float f) {
        this.mWeightSum = Math.max(0.0f, f);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.mOrientation == 1) {
            measureVertical(i, i2);
        } else {
            measureHorizontal(i, i2);
        }
    }

    protected boolean hasDividerBeforeChildAt(int i) {
        if (i == 0) {
            return (this.mShowDividers & 1) != 0;
        }
        if (i == getChildCount()) {
            return (this.mShowDividers & 4) != 0;
        }
        if ((this.mShowDividers & 2) != 0) {
            for (int i2 = i - 1; i2 >= 0; i2--) {
                if (getChildAt(i2).getVisibility() != 8) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0160  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void measureVertical(int i, int i2) {
        int i3;
        int iMax;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        View view;
        boolean z;
        int iMax2;
        boolean z2;
        int iMax3;
        int i15;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int i16 = this.mBaselineAlignedChildIndex;
        boolean z3 = this.mUseLargestChild;
        int childrenSkipCount = 0;
        int i17 = 0;
        int iMax4 = 0;
        int i18 = 0;
        int i19 = 0;
        int iMax5 = 0;
        boolean z4 = false;
        boolean z5 = false;
        float f = 0.0f;
        boolean z6 = true;
        while (true) {
            int i20 = 8;
            if (childrenSkipCount < virtualChildCount) {
                float f2 = f;
                View virtualChildAt = getVirtualChildAt(childrenSkipCount);
                if (virtualChildAt == null) {
                    this.mTotalLength += measureNullChild(childrenSkipCount);
                } else if (virtualChildAt.getVisibility() == 8) {
                    childrenSkipCount += getChildrenSkipCount(virtualChildAt, childrenSkipCount);
                } else {
                    if (hasDividerBeforeChildAt(childrenSkipCount)) {
                        this.mTotalLength += this.mDividerHeight;
                    }
                    LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                    float f3 = ((LinearLayout.LayoutParams) layoutParams).weight;
                    float f4 = f2 + f3;
                    if (mode2 == 1073741824 && ((LinearLayout.LayoutParams) layoutParams).height == 0 && f3 > 0.0f) {
                        int i21 = this.mTotalLength;
                        this.mTotalLength = Math.max(i21, ((LinearLayout.LayoutParams) layoutParams).topMargin + i21 + ((LinearLayout.LayoutParams) layoutParams).bottomMargin);
                        iMax2 = i17;
                        i11 = virtualChildCount;
                        i12 = mode2;
                        z4 = true;
                        view = virtualChildAt;
                        i14 = i18;
                        i13 = i19;
                        z = z3;
                    } else {
                        if (((LinearLayout.LayoutParams) layoutParams).height != 0 || f3 <= 0.0f) {
                            i8 = Integer.MIN_VALUE;
                        } else {
                            ((LinearLayout.LayoutParams) layoutParams).height = -2;
                            i8 = 0;
                        }
                        if (f4 == 0.0f) {
                            int i22 = i19;
                            i10 = this.mTotalLength;
                            i9 = i22;
                        } else {
                            i9 = i19;
                            i10 = 0;
                        }
                        int i23 = iMax4;
                        i11 = virtualChildCount;
                        i12 = mode2;
                        i13 = i9;
                        i14 = i18;
                        view = virtualChildAt;
                        z = z3;
                        iMax2 = i17;
                        measureChildBeforeLayout(view, childrenSkipCount, i, 0, i2, i10);
                        if (i8 != Integer.MIN_VALUE) {
                            ((LinearLayout.LayoutParams) layoutParams).height = i8;
                        }
                        int measuredHeight = view.getMeasuredHeight();
                        int i24 = this.mTotalLength;
                        this.mTotalLength = Math.max(i24, i24 + measuredHeight + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin + getNextLocationOffset(view));
                        iMax4 = z ? Math.max(measuredHeight, i23) : i23;
                    }
                    if (i16 >= 0 && i16 == childrenSkipCount + 1) {
                        this.mBaselineChildTop = this.mTotalLength;
                    }
                    if (childrenSkipCount < i16 && ((LinearLayout.LayoutParams) layoutParams).weight > 0.0f) {
                        throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                    }
                    if (mode == 1073741824 || ((LinearLayout.LayoutParams) layoutParams).width != -1) {
                        z2 = false;
                    } else {
                        z2 = true;
                        z5 = true;
                    }
                    int i25 = ((LinearLayout.LayoutParams) layoutParams).leftMargin + ((LinearLayout.LayoutParams) layoutParams).rightMargin;
                    int measuredWidth = view.getMeasuredWidth() + i25;
                    iMax3 = Math.max(i14, measuredWidth);
                    int i26 = iMax4;
                    int iCombineMeasuredStates = View.combineMeasuredStates(i13, view.getMeasuredState());
                    if (z6) {
                        i15 = iCombineMeasuredStates;
                        z6 = ((LinearLayout.LayoutParams) layoutParams).width == -1;
                        if (((LinearLayout.LayoutParams) layoutParams).weight <= 0.0f) {
                            if (!z2) {
                                i25 = measuredWidth;
                            }
                            iMax2 = Math.max(iMax2, i25);
                        } else {
                            if (!z2) {
                                i25 = measuredWidth;
                            }
                            iMax5 = Math.max(iMax5, i25);
                        }
                        childrenSkipCount += getChildrenSkipCount(view, childrenSkipCount);
                        f = f4;
                        iMax4 = i26;
                        i19 = i15;
                        childrenSkipCount++;
                        i18 = iMax3;
                        i17 = iMax2;
                        z3 = z;
                        mode2 = i12;
                        virtualChildCount = i11;
                    } else {
                        i15 = iCombineMeasuredStates;
                    }
                    if (((LinearLayout.LayoutParams) layoutParams).weight <= 0.0f) {
                    }
                    childrenSkipCount += getChildrenSkipCount(view, childrenSkipCount);
                    f = f4;
                    iMax4 = i26;
                    i19 = i15;
                    childrenSkipCount++;
                    i18 = iMax3;
                    i17 = iMax2;
                    z3 = z;
                    mode2 = i12;
                    virtualChildCount = i11;
                }
                iMax2 = i17;
                i11 = virtualChildCount;
                i12 = mode2;
                z = z3;
                f = f2;
                iMax3 = i18;
                childrenSkipCount++;
                i18 = iMax3;
                i17 = iMax2;
                z3 = z;
                mode2 = i12;
                virtualChildCount = i11;
            } else {
                float f5 = f;
                int i27 = i17;
                int i28 = virtualChildCount;
                int i29 = mode2;
                boolean z7 = z3;
                int i30 = iMax4;
                int iMax6 = i18;
                int iCombineMeasuredStates2 = i19;
                if (this.mTotalLength > 0) {
                    i3 = i28;
                    if (hasDividerBeforeChildAt(i3)) {
                        this.mTotalLength += this.mDividerHeight;
                    }
                } else {
                    i3 = i28;
                }
                int i31 = i29;
                if (z7 && (i31 == Integer.MIN_VALUE || i31 == 0)) {
                    this.mTotalLength = 0;
                    int childrenSkipCount2 = 0;
                    while (childrenSkipCount2 < i3) {
                        View virtualChildAt2 = getVirtualChildAt(childrenSkipCount2);
                        if (virtualChildAt2 == null) {
                            this.mTotalLength += measureNullChild(childrenSkipCount2);
                        } else if (virtualChildAt2.getVisibility() == i20) {
                            childrenSkipCount2 += getChildrenSkipCount(virtualChildAt2, childrenSkipCount2);
                        } else {
                            LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                            int i32 = this.mTotalLength;
                            this.mTotalLength = Math.max(i32, i32 + i30 + ((LinearLayout.LayoutParams) layoutParams2).topMargin + ((LinearLayout.LayoutParams) layoutParams2).bottomMargin + getNextLocationOffset(virtualChildAt2));
                        }
                        childrenSkipCount2++;
                        i20 = 8;
                    }
                }
                int paddingTop = this.mTotalLength + getPaddingTop() + getPaddingBottom();
                this.mTotalLength = paddingTop;
                int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i2, 0);
                int i33 = (16777215 & iResolveSizeAndState) - this.mTotalLength;
                if (z4 || (i33 != 0 && f5 > 0.0f)) {
                    float f6 = this.mWeightSum;
                    if (f6 <= 0.0f) {
                        f6 = f5;
                    }
                    this.mTotalLength = 0;
                    float f7 = f6;
                    int i34 = i33;
                    int i35 = 0;
                    while (i35 < i3) {
                        View virtualChildAt3 = getVirtualChildAt(i35);
                        if (virtualChildAt3.getVisibility() == 8) {
                            i4 = i31;
                            i5 = i35;
                        } else {
                            LayoutParams layoutParams3 = (LayoutParams) virtualChildAt3.getLayoutParams();
                            float f8 = ((LinearLayout.LayoutParams) layoutParams3).weight;
                            if (f8 > 0.0f) {
                                i5 = i35;
                                int i36 = (int) ((i34 * f8) / f7);
                                f7 -= f8;
                                i34 -= i36;
                                int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + ((LinearLayout.LayoutParams) layoutParams3).leftMargin + ((LinearLayout.LayoutParams) layoutParams3).rightMargin, ((LinearLayout.LayoutParams) layoutParams3).width);
                                if (((LinearLayout.LayoutParams) layoutParams3).height == 0) {
                                    i7 = TLObject.FLAG_30;
                                    if (i31 == 1073741824) {
                                        i4 = i31;
                                        virtualChildAt3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i36 > 0 ? i36 : 0, TLObject.FLAG_30));
                                    }
                                    iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, virtualChildAt3.getMeasuredState() & (-256));
                                } else {
                                    i7 = TLObject.FLAG_30;
                                }
                                i4 = i31;
                                int measuredHeight2 = virtualChildAt3.getMeasuredHeight() + i36;
                                if (measuredHeight2 < 0) {
                                    measuredHeight2 = 0;
                                }
                                virtualChildAt3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight2, i7));
                                iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, virtualChildAt3.getMeasuredState() & (-256));
                            } else {
                                i4 = i31;
                                i5 = i35;
                            }
                            int i37 = ((LinearLayout.LayoutParams) layoutParams3).leftMargin + ((LinearLayout.LayoutParams) layoutParams3).rightMargin;
                            int measuredWidth2 = virtualChildAt3.getMeasuredWidth() + i37;
                            iMax6 = Math.max(iMax6, measuredWidth2);
                            if (mode != 1073741824) {
                                i6 = -1;
                                if (((LinearLayout.LayoutParams) layoutParams3).width == -1) {
                                    measuredWidth2 = i37;
                                }
                            } else {
                                i6 = -1;
                            }
                            int iMax7 = Math.max(iMax5, measuredWidth2);
                            boolean z8 = z6 && ((LinearLayout.LayoutParams) layoutParams3).width == i6;
                            int i38 = this.mTotalLength;
                            this.mTotalLength = Math.max(i38, i38 + virtualChildAt3.getMeasuredHeight() + ((LinearLayout.LayoutParams) layoutParams3).topMargin + ((LinearLayout.LayoutParams) layoutParams3).bottomMargin + getNextLocationOffset(virtualChildAt3));
                            iMax5 = iMax7;
                            z6 = z8;
                        }
                        i35 = i5 + 1;
                        i31 = i4;
                    }
                    this.mTotalLength += getPaddingTop() + getPaddingBottom();
                    iMax = iMax5;
                } else {
                    iMax = Math.max(iMax5, i27);
                    if (z7 && i31 != 1073741824) {
                        for (int i39 = 0; i39 < i3; i39++) {
                            View virtualChildAt4 = getVirtualChildAt(i39);
                            if (virtualChildAt4 != null && virtualChildAt4.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((LayoutParams) virtualChildAt4.getLayoutParams())).weight > 0.0f) {
                                virtualChildAt4.measure(View.MeasureSpec.makeMeasureSpec(virtualChildAt4.getMeasuredWidth(), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(i30, TLObject.FLAG_30));
                            }
                        }
                    }
                }
                if (!z6 && mode != 1073741824) {
                    iMax6 = iMax;
                }
                setMeasuredDimension(View.resolveSizeAndState(Math.max(iMax6 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, iCombineMeasuredStates2), iResolveSizeAndState);
                if (z5) {
                    forceUniformWidth(i3, i2);
                    return;
                }
                return;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void forceUniformWidth(int i, int i2) {
        int i3;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), TLObject.FLAG_30);
        int i4 = 0;
        while (i4 < i) {
            View virtualChildAt = getVirtualChildAt(i4);
            if (virtualChildAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (((LinearLayout.LayoutParams) layoutParams).width == -1) {
                    int i5 = ((LinearLayout.LayoutParams) layoutParams).height;
                    ((LinearLayout.LayoutParams) layoutParams).height = virtualChildAt.getMeasuredHeight();
                    i3 = i2;
                    measureChildWithMargins(virtualChildAt, iMakeMeasureSpec, 0, i3, 0);
                    ((LinearLayout.LayoutParams) layoutParams).height = i5;
                } else {
                    i3 = i2;
                }
            }
            i4++;
            i2 = i3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:203:0x0461  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void measureHorizontal(int i, int i2) {
        int i3;
        int i4;
        float f;
        int i5;
        int i6;
        int i7;
        int i8;
        int iMax;
        int i9;
        int i10;
        int baseline;
        int i11;
        int i12;
        float f2;
        int i13;
        byte b;
        int i14;
        boolean z;
        int i15;
        int i16;
        int i17;
        int[] iArr;
        int i18;
        int i19;
        boolean z2;
        int[] iArr2;
        View view;
        boolean z3;
        boolean z4;
        int baseline2;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (this.mMaxAscent == null || this.mMaxDescent == null) {
            this.mMaxAscent = new int[4];
            this.mMaxDescent = new int[4];
        }
        int[] iArr3 = this.mMaxAscent;
        int[] iArr4 = this.mMaxDescent;
        iArr3[3] = -1;
        iArr3[2] = -1;
        iArr3[1] = -1;
        iArr3[0] = -1;
        iArr4[3] = -1;
        iArr4[2] = -1;
        iArr4[1] = -1;
        iArr4[0] = -1;
        boolean z5 = this.mBaselineAligned;
        boolean z6 = this.mUseLargestChild;
        int i20 = TLObject.FLAG_30;
        boolean z7 = mode == 1073741824;
        boolean z8 = z6;
        int childrenSkipCount = 0;
        int i21 = 0;
        int iMax2 = 0;
        boolean z9 = false;
        int iCombineMeasuredStates = 0;
        boolean z10 = false;
        boolean z11 = true;
        float f3 = 0.0f;
        int iMax3 = 0;
        int iMax4 = 0;
        while (true) {
            i3 = i21;
            if (childrenSkipCount >= virtualChildCount) {
                break;
            }
            boolean z12 = z5;
            View virtualChildAt = getVirtualChildAt(childrenSkipCount);
            if (virtualChildAt == null) {
                this.mTotalLength += measureNullChild(childrenSkipCount);
            } else if (virtualChildAt.getVisibility() == 8) {
                childrenSkipCount += getChildrenSkipCount(virtualChildAt, childrenSkipCount);
            } else {
                if (hasDividerBeforeChildAt(childrenSkipCount)) {
                    this.mTotalLength += this.mDividerWidth;
                }
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                float f4 = ((LinearLayout.LayoutParams) layoutParams).weight;
                float f5 = f3 + f4;
                if (mode == i20 && ((LinearLayout.LayoutParams) layoutParams).width == 0 && f4 > 0.0f) {
                    if (z7) {
                        this.mTotalLength += ((LinearLayout.LayoutParams) layoutParams).leftMargin + ((LinearLayout.LayoutParams) layoutParams).rightMargin;
                    } else {
                        int i22 = this.mTotalLength;
                        this.mTotalLength = Math.max(i22, ((LinearLayout.LayoutParams) layoutParams).leftMargin + i22 + ((LinearLayout.LayoutParams) layoutParams).rightMargin);
                    }
                    if (z12) {
                        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                        virtualChildAt.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                        i16 = virtualChildCount;
                        i17 = mode;
                        iArr = iArr3;
                        iArr2 = iArr4;
                    } else {
                        i16 = virtualChildCount;
                        i17 = mode;
                        iArr = iArr3;
                        iArr2 = iArr4;
                        z9 = true;
                    }
                    i18 = i3;
                    i19 = TLObject.FLAG_30;
                    z2 = z8;
                    view = virtualChildAt;
                } else {
                    if (((LinearLayout.LayoutParams) layoutParams).width != 0 || f4 <= 0.0f) {
                        b = -2;
                        i14 = Integer.MIN_VALUE;
                    } else {
                        b = -2;
                        ((LinearLayout.LayoutParams) layoutParams).width = -2;
                        i14 = 0;
                    }
                    if (f5 == 0.0f) {
                        z = z8;
                        i15 = this.mTotalLength;
                    } else {
                        z = z8;
                        i15 = 0;
                    }
                    i16 = virtualChildCount;
                    i17 = mode;
                    iArr = iArr3;
                    i18 = i3;
                    i19 = TLObject.FLAG_30;
                    z2 = z;
                    iArr2 = iArr4;
                    int i23 = i14;
                    measureChildBeforeLayout(virtualChildAt, childrenSkipCount, i, i15, i2, 0);
                    view = virtualChildAt;
                    if (i23 != Integer.MIN_VALUE) {
                        ((LinearLayout.LayoutParams) layoutParams).width = i23;
                    }
                    int measuredWidth = view.getMeasuredWidth();
                    if (z7) {
                        this.mTotalLength += ((LinearLayout.LayoutParams) layoutParams).leftMargin + measuredWidth + ((LinearLayout.LayoutParams) layoutParams).rightMargin + getNextLocationOffset(view);
                    } else {
                        int i24 = this.mTotalLength;
                        this.mTotalLength = Math.max(i24, i24 + measuredWidth + ((LinearLayout.LayoutParams) layoutParams).leftMargin + ((LinearLayout.LayoutParams) layoutParams).rightMargin + getNextLocationOffset(view));
                    }
                    if (z2) {
                        iMax2 = Math.max(measuredWidth, iMax2);
                    }
                }
                if (mode2 == i19 || ((LinearLayout.LayoutParams) layoutParams).height != -1) {
                    z3 = false;
                } else {
                    z3 = true;
                    z10 = true;
                }
                int i25 = ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                int measuredHeight = view.getMeasuredHeight() + i25;
                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                if (!z12 || (baseline2 = view.getBaseline()) == -1) {
                    z4 = z3;
                } else {
                    int i26 = ((LinearLayout.LayoutParams) layoutParams).gravity;
                    if (i26 < 0) {
                        i26 = this.mGravity;
                    }
                    int i27 = (((i26 & 112) >> 4) & (-2)) >> 1;
                    z4 = z3;
                    iArr[i27] = Math.max(iArr[i27], baseline2);
                    iArr2[i27] = Math.max(iArr2[i27], measuredHeight - baseline2);
                }
                int iMax5 = Math.max(i18, measuredHeight);
                z11 = z11 && ((LinearLayout.LayoutParams) layoutParams).height == -1;
                if (((LinearLayout.LayoutParams) layoutParams).weight > 0.0f) {
                    if (!z4) {
                        i25 = measuredHeight;
                    }
                    iMax4 = Math.max(iMax4, i25);
                } else {
                    if (!z4) {
                        i25 = measuredHeight;
                    }
                    iMax3 = Math.max(iMax3, i25);
                }
                childrenSkipCount += getChildrenSkipCount(view, childrenSkipCount);
                i21 = iMax5;
                f3 = f5;
                childrenSkipCount++;
                z8 = z2;
                iArr4 = iArr2;
                z5 = z12;
                mode = i17;
                iArr3 = iArr;
                virtualChildCount = i16;
                i20 = TLObject.FLAG_30;
            }
            i16 = virtualChildCount;
            i17 = mode;
            iArr = iArr3;
            iArr2 = iArr4;
            i21 = i3;
            z2 = z8;
            childrenSkipCount++;
            z8 = z2;
            iArr4 = iArr2;
            z5 = z12;
            mode = i17;
            iArr3 = iArr;
            virtualChildCount = i16;
            i20 = TLObject.FLAG_30;
        }
        boolean z13 = z5;
        int i28 = virtualChildCount;
        int i29 = mode;
        int[] iArr5 = iArr3;
        int[] iArr6 = iArr4;
        int i30 = iCombineMeasuredStates;
        boolean z14 = z8;
        if (this.mTotalLength > 0) {
            i4 = i28;
            if (hasDividerBeforeChildAt(i4)) {
                this.mTotalLength += this.mDividerWidth;
            }
        } else {
            i4 = i28;
        }
        int i31 = iArr5[1];
        int iMax6 = (i31 == -1 && iArr5[0] == -1 && iArr5[2] == -1 && iArr5[3] == -1) ? i3 : Math.max(i3, Math.max(iArr5[3], Math.max(iArr5[0], Math.max(i31, iArr5[2]))) + Math.max(iArr6[3], Math.max(iArr6[0], Math.max(iArr6[1], iArr6[2]))));
        if (z14) {
            i5 = i29;
            if (i5 == Integer.MIN_VALUE || i5 == 0) {
                this.mTotalLength = 0;
                int childrenSkipCount2 = 0;
                while (childrenSkipCount2 < i4) {
                    View virtualChildAt2 = getVirtualChildAt(childrenSkipCount2);
                    if (virtualChildAt2 == null) {
                        this.mTotalLength += measureNullChild(childrenSkipCount2);
                    } else if (virtualChildAt2.getVisibility() == 8) {
                        childrenSkipCount2 += getChildrenSkipCount(virtualChildAt2, childrenSkipCount2);
                    } else {
                        LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                        if (z7) {
                            f2 = f3;
                            this.mTotalLength += ((LinearLayout.LayoutParams) layoutParams2).leftMargin + iMax2 + ((LinearLayout.LayoutParams) layoutParams2).rightMargin + getNextLocationOffset(virtualChildAt2);
                            i13 = iMax6;
                            childrenSkipCount2++;
                            f3 = f2;
                            iMax6 = i13;
                        } else {
                            f2 = f3;
                            int i32 = this.mTotalLength;
                            i13 = iMax6;
                            this.mTotalLength = Math.max(i32, i32 + iMax2 + ((LinearLayout.LayoutParams) layoutParams2).leftMargin + ((LinearLayout.LayoutParams) layoutParams2).rightMargin + getNextLocationOffset(virtualChildAt2));
                            childrenSkipCount2++;
                            f3 = f2;
                            iMax6 = i13;
                        }
                    }
                    f2 = f3;
                    i13 = iMax6;
                    childrenSkipCount2++;
                    f3 = f2;
                    iMax6 = i13;
                }
            }
            f = f3;
        } else {
            f = f3;
            i5 = i29;
        }
        int iMax7 = iMax6;
        int paddingLeft = this.mTotalLength + getPaddingLeft() + getPaddingRight();
        this.mTotalLength = paddingLeft;
        int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingLeft, getSuggestedMinimumWidth()), i, 0);
        int i33 = (16777215 & iResolveSizeAndState) - this.mTotalLength;
        if (z9 || (i33 != 0 && f > 0.0f)) {
            float f6 = this.mWeightSum;
            if (f6 > 0.0f) {
                f = f6;
            }
            iArr5[3] = -1;
            iArr5[2] = -1;
            iArr5[1] = -1;
            iArr5[0] = -1;
            iArr6[3] = -1;
            iArr6[2] = -1;
            iArr6[1] = -1;
            iArr6[0] = -1;
            this.mTotalLength = 0;
            int iCombineMeasuredStates2 = i30;
            int iMax8 = -1;
            int i34 = 0;
            while (i34 < i4) {
                View virtualChildAt3 = getVirtualChildAt(i34);
                if (virtualChildAt3 == null || virtualChildAt3.getVisibility() == 8) {
                    i9 = iResolveSizeAndState;
                } else {
                    LayoutParams layoutParams3 = (LayoutParams) virtualChildAt3.getLayoutParams();
                    float f7 = ((LinearLayout.LayoutParams) layoutParams3).weight;
                    if (f7 > 0.0f) {
                        int i35 = (int) ((i33 * f7) / f);
                        f -= f7;
                        i33 -= i35;
                        i9 = iResolveSizeAndState;
                        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom() + ((LinearLayout.LayoutParams) layoutParams3).topMargin + ((LinearLayout.LayoutParams) layoutParams3).bottomMargin, ((LinearLayout.LayoutParams) layoutParams3).height);
                        if (((LinearLayout.LayoutParams) layoutParams3).width == 0) {
                            i12 = TLObject.FLAG_30;
                            if (i5 == 1073741824) {
                                if (i35 <= 0) {
                                    i35 = 0;
                                }
                                virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(i35, TLObject.FLAG_30), childMeasureSpec);
                            }
                            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, virtualChildAt3.getMeasuredState() & (-16777216));
                        } else {
                            i12 = TLObject.FLAG_30;
                        }
                        int measuredWidth2 = virtualChildAt3.getMeasuredWidth() + i35;
                        if (measuredWidth2 < 0) {
                            measuredWidth2 = 0;
                        }
                        virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2, i12), childMeasureSpec);
                        iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, virtualChildAt3.getMeasuredState() & (-16777216));
                    } else {
                        i9 = iResolveSizeAndState;
                    }
                    if (z7) {
                        this.mTotalLength += virtualChildAt3.getMeasuredWidth() + ((LinearLayout.LayoutParams) layoutParams3).leftMargin + ((LinearLayout.LayoutParams) layoutParams3).rightMargin + getNextLocationOffset(virtualChildAt3);
                    } else {
                        int i36 = this.mTotalLength;
                        this.mTotalLength = Math.max(i36, virtualChildAt3.getMeasuredWidth() + i36 + ((LinearLayout.LayoutParams) layoutParams3).leftMargin + ((LinearLayout.LayoutParams) layoutParams3).rightMargin + getNextLocationOffset(virtualChildAt3));
                    }
                    boolean z15 = mode2 != 1073741824 && ((LinearLayout.LayoutParams) layoutParams3).height == -1;
                    int i37 = ((LinearLayout.LayoutParams) layoutParams3).topMargin + ((LinearLayout.LayoutParams) layoutParams3).bottomMargin;
                    int measuredHeight2 = virtualChildAt3.getMeasuredHeight() + i37;
                    iMax8 = Math.max(iMax8, measuredHeight2);
                    if (!z15) {
                        i37 = measuredHeight2;
                    }
                    int iMax9 = Math.max(iMax3, i37);
                    if (z11) {
                        i10 = -1;
                        boolean z16 = ((LinearLayout.LayoutParams) layoutParams3).height == -1;
                        if (z13 && (baseline = virtualChildAt3.getBaseline()) != i10) {
                            i11 = ((LinearLayout.LayoutParams) layoutParams3).gravity;
                            if (i11 < 0) {
                                i11 = this.mGravity;
                            }
                            int i38 = (((i11 & 112) >> 4) & (-2)) >> 1;
                            iArr5[i38] = Math.max(iArr5[i38], baseline);
                            iArr6[i38] = Math.max(iArr6[i38], measuredHeight2 - baseline);
                        }
                        iMax3 = iMax9;
                        z11 = z16;
                    } else {
                        i10 = -1;
                    }
                    if (z13) {
                        i11 = ((LinearLayout.LayoutParams) layoutParams3).gravity;
                        if (i11 < 0) {
                        }
                        int i382 = (((i11 & 112) >> 4) & (-2)) >> 1;
                        iArr5[i382] = Math.max(iArr5[i382], baseline);
                        iArr6[i382] = Math.max(iArr6[i382], measuredHeight2 - baseline);
                    }
                    iMax3 = iMax9;
                    z11 = z16;
                }
                i34++;
                iResolveSizeAndState = i9;
            }
            i6 = iResolveSizeAndState;
            i7 = -16777216;
            this.mTotalLength += getPaddingLeft() + getPaddingRight();
            int i39 = iArr5[1];
            iMax7 = (i39 == -1 && iArr5[0] == -1 && iArr5[2] == -1 && iArr5[3] == -1) ? iMax8 : Math.max(iMax8, Math.max(iArr5[3], Math.max(iArr5[0], Math.max(i39, iArr5[2]))) + Math.max(iArr6[3], Math.max(iArr6[0], Math.max(iArr6[1], iArr6[2]))));
            i8 = iCombineMeasuredStates2;
            iMax = iMax3;
        } else {
            iMax = Math.max(iMax3, iMax4);
            if (z14 && i5 != 1073741824) {
                for (int i40 = 0; i40 < i4; i40++) {
                    View virtualChildAt4 = getVirtualChildAt(i40);
                    if (virtualChildAt4 != null && virtualChildAt4.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((LayoutParams) virtualChildAt4.getLayoutParams())).weight > 0.0f) {
                        virtualChildAt4.measure(View.MeasureSpec.makeMeasureSpec(iMax2, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(virtualChildAt4.getMeasuredHeight(), TLObject.FLAG_30));
                    }
                }
            }
            i6 = iResolveSizeAndState;
            i8 = i30;
            i7 = -16777216;
        }
        if (z11 || mode2 == 1073741824) {
            iMax = iMax7;
        }
        setMeasuredDimension(i6 | (i8 & i7), View.resolveSizeAndState(Math.max(iMax + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i2, i8 << 16));
        if (z10) {
            forceUniformHeight(i4, i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void forceUniformHeight(int i, int i2) {
        int i3;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), TLObject.FLAG_30);
        int i4 = 0;
        while (i4 < i) {
            View virtualChildAt = getVirtualChildAt(i4);
            if (virtualChildAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (((LinearLayout.LayoutParams) layoutParams).height == -1) {
                    int i5 = ((LinearLayout.LayoutParams) layoutParams).width;
                    ((LinearLayout.LayoutParams) layoutParams).width = virtualChildAt.getMeasuredWidth();
                    i3 = i2;
                    measureChildWithMargins(virtualChildAt, i3, 0, iMakeMeasureSpec, 0);
                    ((LinearLayout.LayoutParams) layoutParams).width = i5;
                } else {
                    i3 = i2;
                }
            }
            i4++;
            i2 = i3;
        }
    }

    void measureChildBeforeLayout(View view, int i, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.mOrientation == 1) {
            layoutVertical(i, i2, i3, i4);
        } else {
            layoutHorizontal(i, i2, i3, i4);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0099  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void layoutVertical(int i, int i2, int i3, int i4) {
        int paddingTop;
        int i5;
        int i6;
        int i7;
        int paddingLeft = getPaddingLeft();
        int i8 = i3 - i;
        int paddingRight = i8 - getPaddingRight();
        int paddingRight2 = (i8 - paddingLeft) - getPaddingRight();
        int virtualChildCount = getVirtualChildCount();
        int i9 = this.mGravity;
        int i10 = i9 & 112;
        int i11 = i9 & 8388615;
        if (i10 == 16) {
            paddingTop = getPaddingTop() + (((i4 - i2) - this.mTotalLength) / 2);
        } else if (i10 == 80) {
            paddingTop = ((getPaddingTop() + i4) - i2) - this.mTotalLength;
        } else {
            paddingTop = getPaddingTop();
        }
        int childrenSkipCount = 0;
        while (childrenSkipCount < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(childrenSkipCount);
            if (virtualChildAt == null) {
                paddingTop += measureNullChild(childrenSkipCount);
            } else {
                if (virtualChildAt.getVisibility() != 8) {
                    int measuredWidth = virtualChildAt.getMeasuredWidth();
                    int measuredHeight = virtualChildAt.getMeasuredHeight();
                    LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                    int i12 = ((LinearLayout.LayoutParams) layoutParams).gravity;
                    if (i12 < 0) {
                        i12 = i11;
                    }
                    int absoluteGravity = GravityCompat.getAbsoluteGravity(i12, getLayoutDirection()) & 7;
                    if (absoluteGravity == 1) {
                        i5 = ((paddingRight2 - measuredWidth) / 2) + paddingLeft + ((LinearLayout.LayoutParams) layoutParams).leftMargin;
                        i6 = ((LinearLayout.LayoutParams) layoutParams).rightMargin;
                    } else if (absoluteGravity == 5) {
                        i5 = paddingRight - measuredWidth;
                        i6 = ((LinearLayout.LayoutParams) layoutParams).rightMargin;
                    } else {
                        i7 = ((LinearLayout.LayoutParams) layoutParams).leftMargin + paddingLeft;
                        int i13 = i7;
                        if (hasDividerBeforeChildAt(childrenSkipCount)) {
                            paddingTop += this.mDividerHeight;
                        }
                        int i14 = paddingTop + ((LinearLayout.LayoutParams) layoutParams).topMargin;
                        setChildFrame(virtualChildAt, i13, i14 + getLocationOffset(virtualChildAt), measuredWidth, measuredHeight);
                        paddingTop = i14 + measuredHeight + ((LinearLayout.LayoutParams) layoutParams).bottomMargin + getNextLocationOffset(virtualChildAt);
                        childrenSkipCount += getChildrenSkipCount(virtualChildAt, childrenSkipCount);
                    }
                    i7 = i5 - i6;
                    int i132 = i7;
                    if (hasDividerBeforeChildAt(childrenSkipCount)) {
                    }
                    int i142 = paddingTop + ((LinearLayout.LayoutParams) layoutParams).topMargin;
                    setChildFrame(virtualChildAt, i132, i142 + getLocationOffset(virtualChildAt), measuredWidth, measuredHeight);
                    paddingTop = i142 + measuredHeight + ((LinearLayout.LayoutParams) layoutParams).bottomMargin + getNextLocationOffset(virtualChildAt);
                    childrenSkipCount += getChildrenSkipCount(virtualChildAt, childrenSkipCount);
                }
                childrenSkipCount++;
            }
            childrenSkipCount++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0105  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void layoutHorizontal(int i, int i2, int i3, int i4) {
        int paddingLeft;
        int i5;
        int i6;
        char c;
        char c2;
        int i7;
        int childrenSkipCount;
        int i8;
        int i9;
        int i10;
        int i11;
        int measuredHeight;
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
        int paddingTop = getPaddingTop();
        int i12 = i4 - i2;
        int paddingBottom = i12 - getPaddingBottom();
        int paddingBottom2 = (i12 - paddingTop) - getPaddingBottom();
        int virtualChildCount = getVirtualChildCount();
        int i13 = this.mGravity;
        int i14 = i13 & 112;
        boolean z = this.mBaselineAligned;
        int[] iArr = this.mMaxAscent;
        int[] iArr2 = this.mMaxDescent;
        int absoluteGravity = GravityCompat.getAbsoluteGravity(8388615 & i13, getLayoutDirection());
        char c3 = 2;
        char c4 = 1;
        if (absoluteGravity == 1) {
            paddingLeft = getPaddingLeft() + (((i3 - i) - this.mTotalLength) / 2);
        } else if (absoluteGravity == 5) {
            paddingLeft = ((getPaddingLeft() + i3) - i) - this.mTotalLength;
        } else {
            paddingLeft = getPaddingLeft();
        }
        if (zIsLayoutRtl) {
            i5 = virtualChildCount - 1;
            i6 = -1;
        } else {
            i5 = 0;
            i6 = 1;
        }
        int i15 = 0;
        while (i15 < virtualChildCount) {
            int i16 = i5 + (i6 * i15);
            int i17 = i15;
            View virtualChildAt = getVirtualChildAt(i16);
            if (virtualChildAt == null) {
                paddingLeft += measureNullChild(i16);
                childrenSkipCount = i17;
                i7 = paddingTop;
                c = c3;
                c2 = c4;
            } else {
                c = c3;
                c2 = c4;
                if (virtualChildAt.getVisibility() != 8) {
                    int measuredWidth = virtualChildAt.getMeasuredWidth();
                    int measuredHeight2 = virtualChildAt.getMeasuredHeight();
                    LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                    int i18 = paddingLeft;
                    if (z) {
                        i8 = measuredHeight2;
                        int baseline = ((LinearLayout.LayoutParams) layoutParams).height != -1 ? virtualChildAt.getBaseline() : -1;
                        i9 = ((LinearLayout.LayoutParams) layoutParams).gravity;
                        if (i9 < 0) {
                            i9 = i14;
                        }
                        i10 = i9 & 112;
                        i7 = paddingTop;
                        if (i10 != 16) {
                            i11 = i7 + ((paddingBottom2 - i8) / 2) + ((LinearLayout.LayoutParams) layoutParams).topMargin;
                            measuredHeight = ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                        } else {
                            if (i10 == 48) {
                                i11 = i7 + ((LinearLayout.LayoutParams) layoutParams).topMargin;
                                if (baseline != -1) {
                                    i11 += iArr[c2] - baseline;
                                }
                            } else if (i10 != 80) {
                                i11 = i7;
                            } else {
                                i11 = (paddingBottom - i8) - ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                                if (baseline != -1) {
                                    measuredHeight = iArr2[c] - (virtualChildAt.getMeasuredHeight() - baseline);
                                }
                            }
                            int i19 = ((LinearLayout.LayoutParams) layoutParams).leftMargin + (hasDividerBeforeChildAt(i16) ? i18 + this.mDividerWidth : i18);
                            setChildFrame(virtualChildAt, getLocationOffset(virtualChildAt) + i19, i11, measuredWidth, i8);
                            int nextLocationOffset = i19 + ((LinearLayout.LayoutParams) layoutParams).rightMargin + measuredWidth + getNextLocationOffset(virtualChildAt);
                            childrenSkipCount = getChildrenSkipCount(virtualChildAt, i16) + i17;
                            paddingLeft = nextLocationOffset;
                        }
                        i11 -= measuredHeight;
                        int i192 = ((LinearLayout.LayoutParams) layoutParams).leftMargin + (hasDividerBeforeChildAt(i16) ? i18 + this.mDividerWidth : i18);
                        setChildFrame(virtualChildAt, getLocationOffset(virtualChildAt) + i192, i11, measuredWidth, i8);
                        int nextLocationOffset2 = i192 + ((LinearLayout.LayoutParams) layoutParams).rightMargin + measuredWidth + getNextLocationOffset(virtualChildAt);
                        childrenSkipCount = getChildrenSkipCount(virtualChildAt, i16) + i17;
                        paddingLeft = nextLocationOffset2;
                    } else {
                        i8 = measuredHeight2;
                    }
                    i9 = ((LinearLayout.LayoutParams) layoutParams).gravity;
                    if (i9 < 0) {
                    }
                    i10 = i9 & 112;
                    i7 = paddingTop;
                    if (i10 != 16) {
                    }
                    i11 -= measuredHeight;
                    int i1922 = ((LinearLayout.LayoutParams) layoutParams).leftMargin + (hasDividerBeforeChildAt(i16) ? i18 + this.mDividerWidth : i18);
                    setChildFrame(virtualChildAt, getLocationOffset(virtualChildAt) + i1922, i11, measuredWidth, i8);
                    int nextLocationOffset22 = i1922 + ((LinearLayout.LayoutParams) layoutParams).rightMargin + measuredWidth + getNextLocationOffset(virtualChildAt);
                    childrenSkipCount = getChildrenSkipCount(virtualChildAt, i16) + i17;
                    paddingLeft = nextLocationOffset22;
                } else {
                    i7 = paddingTop;
                    childrenSkipCount = i17;
                }
            }
            i15 = childrenSkipCount + 1;
            c3 = c;
            c4 = c2;
            paddingTop = i7;
        }
    }

    private void setChildFrame(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i3 + i, i4 + i2);
    }

    public void setOrientation(int i) {
        if (this.mOrientation != i) {
            this.mOrientation = i;
            requestLayout();
        }
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public void setGravity(int i) {
        if (this.mGravity != i) {
            if ((8388615 & i) == 0) {
                i |= 8388611;
            }
            if ((i & 112) == 0) {
                i |= 48;
            }
            this.mGravity = i;
            requestLayout();
        }
    }

    public int getGravity() {
        return this.mGravity;
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & 8388615;
        int i3 = this.mGravity;
        if ((8388615 & i3) != i2) {
            this.mGravity = i2 | ((-8388616) & i3);
            requestLayout();
        }
    }

    public void setVerticalGravity(int i) {
        int i2 = i & 112;
        int i3 = this.mGravity;
        if ((i3 & 112) != i2) {
            this.mGravity = i2 | (i3 & (-113));
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        int i = this.mOrientation;
        if (i == 0) {
            return new LayoutParams(-2, -2);
        }
        if (i == 1) {
            return new LayoutParams(-1, -2);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(ACCESSIBILITY_CLASS_NAME);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(ACCESSIBILITY_CLASS_NAME);
    }

    public static class LayoutParams extends LinearLayout.LayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }
}
