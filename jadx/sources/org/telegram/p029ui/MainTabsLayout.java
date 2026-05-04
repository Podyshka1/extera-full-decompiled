package org.telegram.p029ui;

import android.content.Context;
import android.view.View;
import me.vkryl.android.animator.ListAnimator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p029ui.Components.AnimatedLinearLayout;
import org.telegram.p029ui.Components.glass.GlassTabView;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes3.dex */
public class MainTabsLayout extends AnimatedLinearLayout {
    private int biggestTabTextWidth;
    private int[] tabsLeftPos;
    private float[] tabsTextWidth;
    private float[] tabsTextWidthWithMargin;
    private int[] tabsWeight;
    private int[] tabsWidth;
    private int visibleChildCount;

    public interface Tab {
        float measureTextWidth();
    }

    public MainTabsLayout(Context context) {
        super(context);
    }

    @Override // org.telegram.p029ui.Components.AnimatedLinearLayout, android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int paddingTop = (size2 - getPaddingTop()) - getPaddingBottom();
        measureTabTexts();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int iMin = Math.min(AndroidUtilities.m1124dp(320.0f), paddingLeft);
        int iM1124dp = AndroidUtilities.m1124dp(16.0f);
        int i3 = this.visibleChildCount;
        int i4 = iMin / i3;
        int i5 = (paddingLeft / i3) - (iM1124dp * 2);
        int childCount = getChildCount();
        float f = 0.0f;
        float f2 = 0.0f;
        int i6 = 0;
        for (int i7 = 0; i7 < childCount; i7++) {
            if (!isViewVisible(getChildAt(i7))) {
                float[] fArr = this.tabsTextWidth;
                this.tabsTextWidthWithMargin[i7] = 0.0f;
                fArr[i7] = 0.0f;
                this.tabsWeight[i7] = 0;
            } else {
                float f3 = this.tabsTextWidth[i7];
                if (f3 > i5) {
                    this.tabsTextWidthWithMargin[i7] = f3 + (AndroidUtilities.m1124dp(13.0f) * 2);
                } else {
                    this.tabsTextWidthWithMargin[i7] = f3 + (AndroidUtilities.m1124dp(16.0f) * 2);
                }
                this.tabsWeight[i7] = this.tabsTextWidthWithMargin[i7] > ((float) ((AndroidUtilities.m1124dp(16.0f) * 2) + i5)) ? 0 : 1;
                f2 += this.tabsTextWidthWithMargin[i7];
                i6 += this.tabsWeight[i7];
            }
        }
        if (this.visibleChildCount > 0) {
            float fM1124dp = this.biggestTabTextWidth + (AndroidUtilities.m1124dp(16.0f) * 2);
            float f4 = iMin / this.visibleChildCount;
            if (fM1124dp < f4) {
                int childCount2 = getChildCount();
                for (int i8 = 0; i8 < childCount2; i8++) {
                    if (isViewVisible(getChildAt(i8))) {
                        this.tabsTextWidthWithMargin[i8] = fM1124dp;
                        f += fM1124dp;
                        this.tabsWeight[i8] = 0;
                    }
                }
                i6 = -1;
                f2 = f;
            } else {
                int childCount3 = getChildCount();
                int i9 = 0;
                while (true) {
                    if (i9 < childCount3) {
                        if (isViewVisible(getChildAt(i9)) && this.tabsTextWidth[i9] + (AndroidUtilities.m1124dp(13.0f) * 2) > f4) {
                            break;
                        } else {
                            i9++;
                        }
                    } else {
                        int childCount4 = getChildCount();
                        for (int i10 = 0; i10 < childCount4; i10++) {
                            if (isViewVisible(getChildAt(i10))) {
                                this.tabsTextWidthWithMargin[i10] = f4;
                                f += f4;
                                this.tabsWeight[i10] = 0;
                            }
                        }
                        f2 = f;
                        i6 = 0;
                    }
                }
            }
        }
        if (i6 == 0) {
            int childCount5 = getChildCount();
            for (int i11 = 0; i11 < childCount5; i11++) {
                this.tabsWeight[i11] = isViewVisible(getChildAt(i11)) ? 1 : 0;
            }
            i6 = this.visibleChildCount;
        }
        float f5 = paddingLeft;
        if (f2 > f5) {
            float f6 = f5 / f2;
            int childCount6 = getChildCount();
            for (int i12 = 0; i12 < childCount6; i12++) {
                float[] fArr2 = this.tabsTextWidthWithMargin;
                fArr2[i12] = fArr2[i12] * f6;
            }
        } else {
            float f7 = iMin;
            if (f2 < f7 && i6 > 0) {
                float f8 = (f7 - f2) / i6;
                int childCount7 = getChildCount();
                for (int i13 = 0; i13 < childCount7; i13++) {
                    float[] fArr3 = this.tabsTextWidthWithMargin;
                    fArr3[i13] = fArr3[i13] + (this.tabsWeight[i13] * f8);
                }
            }
        }
        int childCount8 = getChildCount();
        int i14 = 0;
        for (int i15 = 0; i15 < childCount8; i15++) {
            if (isViewVisible(getChildAt(i15))) {
                this.tabsWidth[i15] = Math.round(this.tabsTextWidthWithMargin[i15]);
                this.tabsLeftPos[i15] = i14;
                i14 += this.tabsWidth[i15];
            }
        }
        setMeasuredDimension(i14 + getPaddingLeft() + getPaddingRight(), size2);
        int childCount9 = getChildCount();
        for (int i16 = 0; i16 < childCount9; i16++) {
            getChildAt(i16).measure(View.MeasureSpec.makeMeasureSpec(this.tabsWidth[i16], TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(paddingTop, TLObject.FLAG_30));
        }
        calculateTotalSizesAfterMeasure();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void measureTabTexts() {
        int childCount = getChildCount();
        float[] fArr = this.tabsTextWidth;
        if (fArr == null || fArr.length < childCount) {
            this.tabsTextWidth = new float[childCount];
            this.tabsTextWidthWithMargin = new float[childCount];
            this.tabsWeight = new int[childCount];
            this.tabsLeftPos = new int[childCount];
            this.tabsWidth = new int[childCount];
        }
        int i = 0;
        float fMax = 0.0f;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (!isViewVisible(childAt)) {
                this.tabsTextWidth[i2] = -1.0f;
            } else {
                float fMeasureTextWidth = childAt instanceof Tab ? ((Tab) childAt).measureTextWidth() : 0.0f;
                this.tabsTextWidth[i2] = fMeasureTextWidth;
                fMax = Math.max(fMax, fMeasureTextWidth);
                i++;
            }
        }
        this.biggestTabTextWidth = (int) Math.ceil(fMax);
        this.visibleChildCount = i;
    }

    @Override // org.telegram.p029ui.Components.AnimatedLinearLayout
    protected void setChildVisibilityFactor(View view, float f) {
        float fLerp = AndroidUtilities.lerp(0.7f, 1.0f, f);
        view.setAlpha(f);
        view.setScaleX(fLerp);
        view.setScaleY(fLerp);
    }

    @Override // org.telegram.p029ui.Components.AnimatedLinearLayout, android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        checkVisualWidth();
    }

    @Override // org.telegram.p029ui.Components.AnimatedLinearLayout
    protected void onItemsChanged() {
        super.onItemsChanged();
        checkVisualWidth();
    }

    private void checkVisualWidth() {
        int entriesCount = getEntriesCount();
        for (int i = 0; i < entriesCount; i++) {
            ListAnimator.Entry entry = getEntry(i);
            ((GlassTabView) ((AnimatedLinearLayout.Holder) entry.item).view).setVisualWidth(entry.getRectF().width());
        }
    }
}
