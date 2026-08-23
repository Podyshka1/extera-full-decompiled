package org.telegram.p029ui.Components.voip;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes7.dex */
public class VoIPButtonsLayout extends FrameLayout {
    int childPadding;
    private int childSize;
    int childWidth;
    private boolean startPadding;
    int visibleChildCount;

    public VoIPButtonsLayout(Context context) {
        super(context);
        this.childSize = 68;
        this.startPadding = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (isEnabled()) {
            return super.dispatchTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        this.visibleChildCount = 0;
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            if (getChildAt(i3).getVisibility() != 8) {
                this.visibleChildCount++;
            }
        }
        this.childWidth = AndroidUtilities.m1124dp(this.childSize);
        this.childPadding = ((size / getChildCount()) - this.childWidth) / 2;
        int measuredHeight = 0;
        for (int i4 = 0; i4 < getChildCount(); i4++) {
            if (getChildAt(i4).getVisibility() != 8) {
                getChildAt(i4).measure(View.MeasureSpec.makeMeasureSpec(this.childWidth, TLObject.FLAG_30), i2);
                if (getChildAt(i4).getMeasuredHeight() > measuredHeight) {
                    measuredHeight = getChildAt(i4).getMeasuredHeight();
                }
            }
        }
        setMeasuredDimension(size, Math.max(measuredHeight, AndroidUtilities.m1124dp(80.0f)));
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.startPadding) {
            int childCount = (int) (((getChildCount() - this.visibleChildCount) / 2.0f) * (this.childWidth + (this.childPadding * 2)));
            for (int i5 = 0; i5 < getChildCount(); i5++) {
                View childAt = getChildAt(i5);
                if (childAt.getVisibility() != 8) {
                    int i6 = this.childPadding;
                    childAt.layout(childCount + i6, 0, i6 + childCount + childAt.getMeasuredWidth(), childAt.getMeasuredHeight());
                    childCount += (this.childPadding * 2) + childAt.getMeasuredWidth();
                }
            }
            return;
        }
        int measuredWidth = this.visibleChildCount > 0 ? (getMeasuredWidth() - this.childWidth) / (this.visibleChildCount - 1) : 0;
        int i7 = 0;
        for (int i8 = 0; i8 < getChildCount(); i8++) {
            View childAt2 = getChildAt(i8);
            if (childAt2.getVisibility() != 8) {
                int i9 = i7 * measuredWidth;
                childAt2.layout(i9, 0, childAt2.getMeasuredWidth() + i9, childAt2.getMeasuredHeight());
                i7++;
            }
        }
    }

    public void setChildSize(int i) {
        this.childSize = i;
    }

    public void setUseStartPadding(boolean z) {
        this.startPadding = z;
    }
}
