package org.telegram.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatPropertyCompat;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import java.util.HashSet;
import java.util.Set;
import me.vkryl.android.animator.BoolAnimator;
import me.vkryl.android.animator.FactorAnimator;
import me.vkryl.android.animator.ListAnimator;
import me.vkryl.android.util.ClickHelper;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.tgnet.TLObject;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedLinearLayout;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.glass.GlassTabView;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"ViewConstructor"})
public class MainTabsLayout extends AnimatedLinearLayout {
    private float animatedLongSelectedViewCenterX;
    private float animatedLongSelectedViewOffsetX;
    private final BoolAnimator animatorIsScaled;
    private int biggestTabTextWidth;
    private final ClickHelper clickHelper;
    final Paint dividerPaint;
    private boolean drawCustomSelector;
    private boolean drawTopDivider;
    private boolean fillAvailableWidth;
    private boolean isInLongPress;
    private View lastLongSelectedView;
    private float lastLongSelectedViewCenterX;
    private float lastLongSelectedViewWidth;
    private boolean manuallyStartedLongMove;
    private int maxWidthPx;
    private final Theme.ResourcesProvider resourcesProvider;
    private final Runnable restoreDrawSelector;
    final SpringAnimation scaleX;
    final SpringAnimation scaleY;
    final SpringAnimation selectedTabPositionOffsetX;
    final SpringAnimation selectedTabPositionX;
    final Paint selectorPaint;
    private boolean swipeSelectionEnabled;
    private int[] tabsLeftPos;
    private float[] tabsTextWidth;
    private float[] tabsTextWidthWithMargin;
    private int[] tabsWeight;
    private int[] tabsWidth;
    private final Set<View> tabsWithIgnoreClick;
    private long touchStartTime;
    private View touchStartView;
    private float touchStartX;
    private float touchStartY;
    private int visibleChildCount;
    private static final float[] PASS_TEXT_SIZES_DP = {12.0f, 12.0f, 10.0f};
    private static final int[] PASS_PADDINGS_DP = {16, 8, 4};

    public interface Tab {
        float measureTextWidth(float f);

        void setTextSizeDp(float f);
    }

    public MainTabsLayout(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.swipeSelectionEnabled = true;
        this.restoreDrawSelector = new Runnable() { // from class: org.telegram.ui.MainTabsLayout$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        };
        this.selectorPaint = new Paint(1);
        Paint paint = new Paint(1);
        this.dividerPaint = paint;
        SpringAnimation springAnimation = new SpringAnimation(this, DynamicAnimation.SCALE_X, 1.0f);
        this.scaleX = springAnimation;
        SpringAnimation springAnimation2 = new SpringAnimation(this, DynamicAnimation.SCALE_Y, 1.0f);
        this.scaleY = springAnimation2;
        SpringAnimation springAnimation3 = new SpringAnimation(this, new FloatPropertyCompat<MainTabsLayout>("selectedTabPositionOffsetX") { // from class: org.telegram.ui.MainTabsLayout.1
            @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
            public float getValue(MainTabsLayout mainTabsLayout) {
                return mainTabsLayout.animatedLongSelectedViewOffsetX;
            }

            @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
            public void setValue(MainTabsLayout mainTabsLayout, float f) {
                mainTabsLayout.animatedLongSelectedViewOffsetX = f;
                mainTabsLayout.invalidate();
            }
        });
        this.selectedTabPositionOffsetX = springAnimation3;
        SpringAnimation springAnimation4 = new SpringAnimation(this, new FloatPropertyCompat<MainTabsLayout>("selectedTabPositionX") { // from class: org.telegram.ui.MainTabsLayout.2
            @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
            public float getValue(MainTabsLayout mainTabsLayout) {
                return mainTabsLayout.animatedLongSelectedViewCenterX;
            }

            @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
            public void setValue(MainTabsLayout mainTabsLayout, float f) {
                mainTabsLayout.animatedLongSelectedViewCenterX = f;
                mainTabsLayout.invalidate();
            }
        });
        this.selectedTabPositionX = springAnimation4;
        springAnimation3.setSpring(new SpringForce(1.0f).setStiffness(1500.0f).setDampingRatio(0.75f));
        springAnimation.setSpring(new SpringForce(1.0f).setStiffness(250.0f).setDampingRatio(0.25f));
        springAnimation2.setSpring(new SpringForce(1.0f).setStiffness(250.0f).setDampingRatio(0.25f));
        springAnimation4.setSpring(new SpringForce(1.0f).setStiffness(1500.0f).setDampingRatio(0.75f));
        this.tabsWithIgnoreClick = new HashSet();
        this.animatorIsScaled = new BoolAnimator(0, new FactorAnimator.Target() { // from class: org.telegram.ui.MainTabsLayout$$ExternalSyntheticLambda1
            @Override // me.vkryl.android.animator.FactorAnimator.Target
            public final void onFactorChanged(int i, float f, float f2, FactorAnimator factorAnimator) {
                this.f$0.lambda$new$1(i, f, f2, factorAnimator);
            }
        }, CubicBezierInterpolator.EASE_OUT_QUINT, 380L);
        this.clickHelper = new ClickHelper(new ClickHelper.Delegate() { // from class: org.telegram.ui.MainTabsLayout.3
            @Override // me.vkryl.android.util.ClickHelper.Delegate
            public boolean needCancelTouchBySlopMove() {
                return false;
            }

            @Override // me.vkryl.android.util.ClickHelper.Delegate
            public boolean needLongPress(float f, float f2) {
                return false;
            }

            @Override // me.vkryl.android.util.ClickHelper.Delegate
            public void onClickAt(View view, float f, float f2) {
            }

            @Override // me.vkryl.android.util.ClickHelper.Delegate
            public void onClickTouchDown(View view, float f, float f2) {
            }

            @Override // me.vkryl.android.util.ClickHelper.Delegate
            public void onClickTouchUp(View view, float f, float f2) {
            }

            @Override // me.vkryl.android.util.ClickHelper.Delegate
            public boolean needClickAt(View view, float f, float f2) {
                MainTabsLayout.this.lastLongSelectedView = null;
                View viewFindChildUnder = MainTabsLayout.findChildUnder(MainTabsLayout.this, f, f2);
                return (viewFindChildUnder == null || MainTabsLayout.this.tabsWithIgnoreClick.contains(viewFindChildUnder)) ? false : true;
            }

            @Override // me.vkryl.android.util.ClickHelper.Delegate
            public boolean onLongPressRequestedAt(View view, float f, float f2) {
                MainTabsLayout.this.startTabsLongMove(f, f2);
                return true;
            }

            @Override // me.vkryl.android.util.ClickHelper.Delegate
            public void onLongPressMove(View view, MotionEvent motionEvent, float f, float f2, float f3, float f4) {
                MainTabsLayout.this.checkPivot(view, f, f2);
                MainTabsLayout.this.checkLongMove(f, f2, false, false);
                MainTabsLayout.this.invalidate();
            }

            @Override // me.vkryl.android.util.ClickHelper.Delegate
            public void onLongPressFinish(View view, float f, float f2) {
                MainTabsLayout.this.finishTabsLongMove(f, f2, true);
            }

            @Override // me.vkryl.android.util.ClickHelper.Delegate
            public void onLongPressCancelled(View view, float f, float f2) {
                MainTabsLayout.this.finishTabsLongMove(f, f2, false);
            }

            @Override // me.vkryl.android.util.ClickHelper.Delegate
            public void onClickTouchMove(View view, float f, float f2) {
                if (MainTabsLayout.this.isInLongPress) {
                    MainTabsLayout.this.checkPivot(view, f, f2);
                }
            }
        });
        this.resourcesProvider = resourcesProvider;
        paint.setStrokeWidth(1.0f);
    }

    public void setMaxWidth(int i) {
        if (this.maxWidthPx != i) {
            this.maxWidthPx = i;
            requestLayout();
        }
    }

    public void setFillAvailableWidth(boolean z) {
        if (this.fillAvailableWidth != z) {
            this.fillAvailableWidth = z;
            requestLayout();
        }
    }

    public void setSwipeSelectionEnabled(boolean z) {
        this.swipeSelectionEnabled = z;
    }

    public void setDrawTopDivider(boolean z) {
        if (this.drawTopDivider != z) {
            this.drawTopDivider = z;
            invalidate();
        }
    }

    @Override // org.telegram.ui.Components.AnimatedLinearLayout, android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        float f;
        int i3;
        int i4;
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int paddingTop = (size2 - getPaddingTop()) - getPaddingBottom();
        int i5 = this.maxWidthPx;
        if (i5 > 0 && size > i5) {
            size = i5;
        }
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int iMin = Math.min(AndroidUtilities.dp(320.0f), paddingLeft);
        int length = PASS_TEXT_SIZES_DP.length - 1;
        float f2 = -1.0f;
        int i6 = 0;
        while (true) {
            float[] fArr = PASS_TEXT_SIZES_DP;
            f = 0.0f;
            if (i6 >= fArr.length) {
                i3 = 0;
                break;
            }
            float f3 = fArr[i6];
            if (f3 != f2) {
                measureTabTexts(f3);
                f2 = fArr[i6];
            }
            int iDp = AndroidUtilities.dp(PASS_PADDINGS_DP[i6]);
            int childCount = getChildCount();
            float f4 = 0.0f;
            for (int i7 = 0; i7 < childCount; i7++) {
                if (isViewVisible(getChildAt(i7))) {
                    f4 += this.tabsTextWidth[i7] + (iDp * 2);
                }
            }
            i3 = 0;
            if (f4 <= paddingLeft || i6 == PASS_TEXT_SIZES_DP.length - 1) {
                break;
            } else {
                i6++;
            }
        }
        length = i6;
        applyPassTextSize(length);
        int iDp2 = AndroidUtilities.dp(PASS_PADDINGS_DP[length]);
        if (this.fillAvailableWidth && (i4 = this.visibleChildCount) > 0) {
            float f5 = paddingLeft / i4;
            int childCount2 = getChildCount();
            for (int i8 = i3; i8 < childCount2; i8++) {
                if (!isViewVisible(getChildAt(i8))) {
                    float[] fArr2 = this.tabsTextWidth;
                    this.tabsTextWidthWithMargin[i8] = 0.0f;
                    fArr2[i8] = 0.0f;
                    this.tabsWeight[i8] = i3;
                } else {
                    this.tabsTextWidthWithMargin[i8] = f5;
                    this.tabsWeight[i8] = i3;
                }
            }
        } else {
            int i9 = iDp2 * 2;
            int iMax = (paddingLeft / Math.max(1, this.visibleChildCount)) - i9;
            int childCount3 = getChildCount();
            int i10 = i3;
            int i11 = i10;
            float f6 = 0.0f;
            while (i10 < childCount3) {
                if (!isViewVisible(getChildAt(i10))) {
                    float[] fArr3 = this.tabsTextWidth;
                    this.tabsTextWidthWithMargin[i10] = 0.0f;
                    fArr3[i10] = 0.0f;
                    this.tabsWeight[i10] = i3;
                } else {
                    float[] fArr4 = this.tabsTextWidthWithMargin;
                    float f7 = this.tabsTextWidth[i10] + i9;
                    fArr4[i10] = f7;
                    int[] iArr = this.tabsWeight;
                    int i12 = f7 > ((float) (iMax + i9)) ? i3 : 1;
                    iArr[i10] = i12;
                    f6 += f7;
                    i11 += i12;
                }
                i10++;
            }
            if (this.visibleChildCount > 0) {
                float fDp = this.biggestTabTextWidth + (AndroidUtilities.dp(16.0f) * 2);
                float f8 = iMin / this.visibleChildCount;
                if (fDp < f8) {
                    int childCount4 = getChildCount();
                    for (int i13 = i3; i13 < childCount4; i13++) {
                        if (isViewVisible(getChildAt(i13))) {
                            this.tabsTextWidthWithMargin[i13] = fDp;
                            f += fDp;
                            this.tabsWeight[i13] = i3;
                        }
                    }
                    i11 = -1;
                } else {
                    int childCount5 = getChildCount();
                    for (int i14 = i3; i14 < childCount5; i14++) {
                        if (isViewVisible(getChildAt(i14)) && this.tabsTextWidth[i14] + (AndroidUtilities.dp(13.0f) * 2) > f8) {
                            break;
                        }
                    }
                    int childCount6 = getChildCount();
                    for (int i15 = i3; i15 < childCount6; i15++) {
                        if (isViewVisible(getChildAt(i15))) {
                            this.tabsTextWidthWithMargin[i15] = f8;
                            f += f8;
                            this.tabsWeight[i15] = i3;
                        }
                    }
                    i11 = i3;
                }
                f6 = f;
            }
            if (i11 == 0) {
                int childCount7 = getChildCount();
                for (int i16 = i3; i16 < childCount7; i16++) {
                    this.tabsWeight[i16] = isViewVisible(getChildAt(i16)) ? 1 : 0;
                }
                i11 = this.visibleChildCount;
            }
            float f9 = paddingLeft;
            if (f6 > f9) {
                float f10 = f9 / f6;
                int childCount8 = getChildCount();
                for (int i17 = i3; i17 < childCount8; i17++) {
                    float[] fArr5 = this.tabsTextWidthWithMargin;
                    fArr5[i17] = fArr5[i17] * f10;
                }
            } else {
                float f11 = iMin;
                if (f6 < f11 && i11 > 0) {
                    float f12 = (f11 - f6) / i11;
                    int childCount9 = getChildCount();
                    for (int i18 = i3; i18 < childCount9; i18++) {
                        float[] fArr6 = this.tabsTextWidthWithMargin;
                        fArr6[i18] = fArr6[i18] + (this.tabsWeight[i18] * f12);
                    }
                }
            }
        }
        int childCount10 = getChildCount();
        int i19 = i3;
        int i20 = i19;
        while (i19 < childCount10) {
            if (isViewVisible(getChildAt(i19))) {
                this.tabsWidth[i19] = Math.round(this.tabsTextWidthWithMargin[i19]);
                this.tabsLeftPos[i19] = i20;
                i20 += this.tabsWidth[i19];
            }
            i19++;
        }
        setMeasuredDimension(i20 + getPaddingLeft() + getPaddingRight(), size2);
        int childCount11 = getChildCount();
        for (int i21 = i3; i21 < childCount11; i21++) {
            getChildAt(i21).measure(View.MeasureSpec.makeMeasureSpec(this.tabsWidth[i21], TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(paddingTop, TLObject.FLAG_30));
        }
        calculateTotalSizesAfterMeasure();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void measureTabTexts(float f) {
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
                float fMeasureTextWidth = childAt instanceof Tab ? ((Tab) childAt).measureTextWidth(f) : 0.0f;
                this.tabsTextWidth[i2] = fMeasureTextWidth;
                fMax = Math.max(fMax, fMeasureTextWidth);
                i++;
            }
        }
        this.biggestTabTextWidth = (int) Math.ceil(fMax);
        this.visibleChildCount = i;
    }

    private void applyPassTextSize(int i) {
        float f = PASS_TEXT_SIZES_DP[i];
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            KeyEvent.Callback childAt = getChildAt(i2);
            if (childAt instanceof Tab) {
                ((Tab) childAt).setTextSizeDp(f);
            }
        }
    }

    @Override // org.telegram.ui.Components.AnimatedLinearLayout
    public void setChildVisibilityFactor(View view, float f) {
        float fLerp = AndroidUtilities.lerp(0.7f, 1.0f, f);
        view.setAlpha(f);
        view.setScaleX(fLerp);
        view.setScaleY(fLerp);
    }

    @Override // org.telegram.ui.Components.AnimatedLinearLayout, android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        checkVisualWidth();
    }

    @Override // org.telegram.ui.Components.AnimatedLinearLayout
    public void onItemsChanged() {
        super.onItemsChanged();
        checkVisualWidth();
    }

    private void checkVisualWidth() {
        int entriesCount = getEntriesCount();
        for (int i = 0; i < entriesCount; i++) {
            ListAnimator.Entry<AnimatedLinearLayout.Holder> entry = getEntry(i);
            ((GlassTabView) entry.item.view).setVisualWidth(entry.getRectF().width());
        }
    }

    public void setTabSelected(View view, boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof GlassTabView) {
                ((GlassTabView) childAt).setSelected(childAt == view, z);
            }
        }
    }

    private View findSelectedTab() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (childAt instanceof GlassTabView) && ((GlassTabView) childAt).isTabSelected()) {
                return childAt;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        setSkipDrawSelector(false);
    }

    private void setSkipDrawSelector(boolean z) {
        this.drawCustomSelector = z;
        if (z) {
            this.selectorPaint.setColor(Theme.multAlpha(Theme.getColor(Theme.key_glass_tabSelected, this.resourcesProvider), 0.09f));
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (childAt instanceof GlassTabView)) {
                ((GlassTabView) childAt).setSkipDrawSelector(z);
            }
        }
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        if (this.drawCustomSelector) {
            float f = this.animatedLongSelectedViewCenterX + this.animatedLongSelectedViewOffsetX;
            float interpolatedWidthByX = getInterpolatedWidthByX(f, this);
            float height = (getHeight() - getPaddingTop()) - getPaddingBottom();
            float f2 = interpolatedWidthByX / 2.0f;
            float f3 = height / 2.0f;
            canvas.drawRoundRect(f - f2, (getHeight() - height) / 2.0f, f + f2, (getHeight() + height) / 2.0f, f3, f3, this.selectorPaint);
        }
        super.dispatchDraw(canvas);
        if (this.drawTopDivider) {
            this.dividerPaint.setColor(Theme.getDividerColor(this.resourcesProvider));
            canvas.drawLine(0.0f, 1.0f, getMeasuredWidth(), 1.0f, this.dividerPaint);
        }
    }

    public static View findChildUnder(ViewGroup viewGroup, float f, float f2) {
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if (childAt.getVisibility() == 0 && f >= childAt.getLeft() && f <= childAt.getRight() && f2 >= childAt.getTop() && f2 <= childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkLongMove(float f, float f2, boolean z, boolean z2) {
        float fClampXToChildrenCenters = clampXToChildrenCenters(f, this);
        View viewFindNearestVisibleChildByX = findNearestVisibleChildByX(fClampXToChildrenCenters, this);
        if (z) {
            View viewFindSelectedTab = findSelectedTab();
            if (viewFindSelectedTab != null) {
                float x = viewFindSelectedTab.getX() + (viewFindSelectedTab.getWidth() / 2.0f);
                this.animatedLongSelectedViewCenterX = x;
                this.animatedLongSelectedViewOffsetX = x - fClampXToChildrenCenters;
                this.selectedTabPositionOffsetX.animateToFinalPosition(0.0f);
                if (viewFindSelectedTab != viewFindNearestVisibleChildByX && viewFindNearestVisibleChildByX != null) {
                    viewFindNearestVisibleChildByX.performClick();
                }
            }
            this.selectedTabPositionX.cancel();
        }
        if (!z2) {
            this.animatedLongSelectedViewCenterX = fClampXToChildrenCenters;
            invalidate();
        }
        if (viewFindNearestVisibleChildByX != null) {
            this.lastLongSelectedView = viewFindNearestVisibleChildByX;
            setTabSelected(viewFindNearestVisibleChildByX, true);
            if (z2) {
                float width = viewFindNearestVisibleChildByX.getWidth();
                float x2 = viewFindNearestVisibleChildByX.getX() + (width / 2.0f);
                if (this.lastLongSelectedViewWidth == width && this.lastLongSelectedViewCenterX == x2) {
                    return;
                }
                this.selectedTabPositionX.animateToFinalPosition(x2);
            }
        }
    }

    public void addTabToIgnoreClick(View view) {
        this.tabsWithIgnoreClick.add(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(int i, float f, float f2, FactorAnimator factorAnimator) {
        setScaleX(AndroidUtilities.lerp(1.0f, 1.019f, f));
        setScaleY(AndroidUtilities.lerp(1.0f, 1.019f, f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startTabsLongMove(float f, float f2) {
        if (this.swipeSelectionEnabled) {
            checkPivot(this, f, f2);
            this.isInLongPress = true;
            AndroidUtilities.cancelRunOnUIThread(this.restoreDrawSelector);
            setSkipDrawSelector(true);
            checkLongMove(f, f2, true, false);
            invalidate();
            this.animatorIsScaled.setValue(true, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishTabsLongMove(float f, float f2, boolean z) {
        View view;
        checkPivot(this, f, f2);
        checkLongMove(f, f2, false, true);
        this.isInLongPress = false;
        this.manuallyStartedLongMove = false;
        AndroidUtilities.runOnUIThread(this.restoreDrawSelector, 450L);
        if (z && (view = this.lastLongSelectedView) != null) {
            view.performClick();
        }
        this.lastLongSelectedView = null;
        invalidate();
        this.animatorIsScaled.setValue(false, true);
    }

    @Override // android.view.View
    public void setScaleY(float f) {
        super.setScaleY(f);
        checkLayerType();
    }

    @Override // android.view.View
    public void setScaleX(float f) {
        super.setScaleX(f);
        checkLayerType();
    }

    private void checkLayerType() {
        int i = (Math.abs(getScaleX() - 1.0f) >= 1.0E-4f || Math.abs(getScaleY() - 1.0f) >= 1.0E-4f) ? 2 : 0;
        if (getLayerType() != i) {
            setLayerType(i, null);
            invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkPivot(View view, float f, float f2) {
        float f3;
        float f4;
        float width = view.getWidth();
        float height = view.getHeight();
        if (width <= 0.0f || height <= 0.0f) {
            return;
        }
        float f5 = width * 0.5f;
        float f6 = height * 0.5f;
        float f7 = f - f5;
        float f8 = f2 - f6;
        float f9 = f7 / f5;
        float f10 = f8 / f6;
        float fSqrt = (float) Math.sqrt((f9 * f9) + (f10 * f10));
        if (fSqrt > 1.0E-4f) {
            float f11 = ((1.5f * fSqrt) / (0.5f + fSqrt)) / fSqrt;
            f3 = (f7 * f11) + f5;
            f4 = (f8 * f11) + f6;
        } else {
            f3 = f5;
            f4 = f6;
        }
        float fLerp = AndroidUtilities.lerp(f5, f3, 0.95f);
        float fLerp2 = AndroidUtilities.lerp(f6, f4, 2.83f);
        view.setPivotX(fLerp);
        view.setPivotY(fLerp2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.swipeSelectionEnabled) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.touchStartX = motionEvent.getX();
                this.touchStartY = motionEvent.getY();
                this.touchStartTime = motionEvent.getEventTime();
                this.touchStartView = findChildUnder(this, this.touchStartX, this.touchStartY);
                this.manuallyStartedLongMove = false;
            } else if (actionMasked == 2) {
                if (this.manuallyStartedLongMove) {
                    checkPivot(this, motionEvent.getX(), motionEvent.getY());
                    checkLongMove(motionEvent.getX(), motionEvent.getY(), false, false);
                    invalidate();
                    return true;
                }
                View view = this.touchStartView;
                if ((view instanceof GlassTabView) && ((GlassTabView) view).isTabSelected() && motionEvent.getEventTime() - this.touchStartTime < ViewConfiguration.getLongPressTimeout()) {
                    float x = motionEvent.getX() - this.touchStartX;
                    float y = motionEvent.getY() - this.touchStartY;
                    if (Math.abs(x) > Math.max(AndroidUtilities.dp(24.0f), AndroidUtilities.getPixelsInCM(0.3f, true)) && Math.abs(x) > Math.abs(y)) {
                        this.clickHelper.cancel(this, motionEvent.getX(), motionEvent.getY());
                        this.touchStartView.cancelLongPress();
                        this.touchStartView.setPressed(false);
                        if (getParent() != null) {
                            getParent().requestDisallowInterceptTouchEvent(true);
                        }
                        performHapticFeedback(0);
                        this.manuallyStartedLongMove = true;
                        startTabsLongMove(this.touchStartX, this.touchStartY);
                        checkPivot(this, motionEvent.getX(), motionEvent.getY());
                        checkLongMove(motionEvent.getX(), motionEvent.getY(), false, false);
                        return true;
                    }
                }
            } else if ((actionMasked == 1 || actionMasked == 3) && this.manuallyStartedLongMove) {
                finishTabsLongMove(motionEvent.getX(), motionEvent.getY(), actionMasked == 1);
                return true;
            }
        }
        this.clickHelper.onTouchEvent(this, motionEvent);
        return super.dispatchTouchEvent(motionEvent);
    }

    private static float clampXToChildrenCenters(float f, ViewGroup viewGroup) {
        if (viewGroup != null && viewGroup.getChildCount() != 0) {
            float f2 = -3.4028235E38f;
            float f3 = Float.MAX_VALUE;
            boolean z = false;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt != null && childAt.getVisibility() == 0) {
                    float x = childAt.getX() + (childAt.getWidth() * 0.5f);
                    if (x < f3) {
                        f3 = x;
                    }
                    if (x > f2) {
                        f2 = x;
                    }
                    z = true;
                }
            }
            if (z) {
                if (f < f3) {
                    return f3;
                }
                if (f > f2) {
                    return f2;
                }
            }
        }
        return f;
    }

    private static View findNearestVisibleChildByX(float f, ViewGroup viewGroup) {
        View view = null;
        if (viewGroup != null && viewGroup.getChildCount() != 0) {
            float f2 = Float.MAX_VALUE;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt != null && childAt.getVisibility() == 0) {
                    float fAbs = Math.abs((childAt.getX() + (childAt.getWidth() * 0.5f)) - f);
                    if (fAbs < f2) {
                        view = childAt;
                        f2 = fAbs;
                    }
                }
            }
        }
        return view;
    }

    private static float getInterpolatedWidthByX(float f, ViewGroup viewGroup) {
        int width;
        if (viewGroup == null || viewGroup.getChildCount() == 0) {
            return 0.0f;
        }
        View view = null;
        View view2 = null;
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt != null && childAt.getVisibility() == 0) {
                float x = childAt.getX() + (childAt.getWidth() * 0.5f);
                if (x <= f && (view == null || x > getCenterX(view))) {
                    view = childAt;
                }
                if (x >= f && (view2 == null || x < getCenterX(view2))) {
                    view2 = childAt;
                }
            }
        }
        if (view == null && view2 == null) {
            return 0.0f;
        }
        if (view == null) {
            width = view2.getWidth();
        } else if (view2 == null) {
            width = view.getWidth();
        } else {
            float centerX = getCenterX(view);
            float centerX2 = getCenterX(view2);
            if (view == view2 || centerX == centerX2) {
                width = view.getWidth();
            } else {
                width = AndroidUtilities.lerp(view.getWidth(), view2.getWidth(), (f - centerX) / (centerX2 - centerX));
            }
        }
        return width;
    }

    private static float getCenterX(View view) {
        return view.getX() + (view.getWidth() * 0.5f);
    }
}
