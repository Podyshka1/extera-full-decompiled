package com.google.android.material.progressindicator;

import android.content.Context;
import android.util.AttributeSet;
import com.google.android.material.C1349R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class LinearProgressIndicator extends BaseProgressIndicator<LinearProgressIndicatorSpec> {
    public static final int DEF_STYLE_RES = C1349R.style.Widget_MaterialComponents_LinearProgressIndicator;
    public static final int INDETERMINATE_ANIMATION_TYPE_CONTIGUOUS = 0;
    public static final int INDETERMINATE_ANIMATION_TYPE_DISJOINT = 1;
    public static final int INDICATOR_DIRECTION_END_TO_START = 3;
    public static final int INDICATOR_DIRECTION_LEFT_TO_RIGHT = 0;
    public static final int INDICATOR_DIRECTION_RIGHT_TO_LEFT = 1;
    public static final int INDICATOR_DIRECTION_START_TO_END = 2;

    /* JADX INFO: loaded from: classes5.dex */
    @Retention(RetentionPolicy.SOURCE)
    public @interface IndeterminateAnimationType {
    }

    /* JADX INFO: loaded from: classes5.dex */
    @Retention(RetentionPolicy.SOURCE)
    public @interface IndicatorDirection {
    }

    public LinearProgressIndicator(Context context) {
        this(context, null);
    }

    public LinearProgressIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1349R.attr.linearProgressIndicatorStyle);
    }

    public LinearProgressIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, DEF_STYLE_RES);
        initializeDrawables();
        this.initialized = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public LinearProgressIndicatorSpec createSpec(Context context, AttributeSet attributeSet) {
        return new LinearProgressIndicatorSpec(context, attributeSet);
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        S s = this.spec;
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = (LinearProgressIndicatorSpec) s;
        boolean z2 = true;
        if (((LinearProgressIndicatorSpec) s).indicatorDirection != 1 && ((getLayoutDirection() != 1 || ((LinearProgressIndicatorSpec) this.spec).indicatorDirection != 2) && (getLayoutDirection() != 0 || ((LinearProgressIndicatorSpec) this.spec).indicatorDirection != 3))) {
            z2 = false;
        }
        linearProgressIndicatorSpec.drawHorizontallyInverse = z2;
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        int paddingLeft = i - (getPaddingLeft() + getPaddingRight());
        int paddingTop = i2 - (getPaddingTop() + getPaddingBottom());
        IndeterminateDrawable<LinearProgressIndicatorSpec> indeterminateDrawable = getIndeterminateDrawable();
        if (indeterminateDrawable != null) {
            indeterminateDrawable.setBounds(0, 0, paddingLeft, paddingTop);
        }
        DeterminateDrawable<LinearProgressIndicatorSpec> progressDrawable = getProgressDrawable();
        if (progressDrawable != null) {
            progressDrawable.setBounds(0, 0, paddingLeft, paddingTop);
        }
    }

    private void initializeDrawables() {
        LinearDrawingDelegate linearDrawingDelegate = new LinearDrawingDelegate((LinearProgressIndicatorSpec) this.spec);
        setIndeterminateDrawable(IndeterminateDrawable.createLinearDrawable(getContext(), (LinearProgressIndicatorSpec) this.spec, linearDrawingDelegate));
        setProgressDrawable(DeterminateDrawable.createLinearDrawable(getContext(), (LinearProgressIndicatorSpec) this.spec, linearDrawingDelegate));
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setIndicatorColor(int... iArr) {
        super.setIndicatorColor(iArr);
        ((LinearProgressIndicatorSpec) this.spec).validateSpec();
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setTrackCornerRadius(int i) {
        super.setTrackCornerRadius(i);
        ((LinearProgressIndicatorSpec) this.spec).validateSpec();
        invalidate();
    }

    public int getTrackInnerCornerRadius() {
        return ((LinearProgressIndicatorSpec) this.spec).trackInnerCornerRadius;
    }

    public void setTrackInnerCornerRadius(int i) {
        S s = this.spec;
        if (((LinearProgressIndicatorSpec) s).trackInnerCornerRadius != i) {
            ((LinearProgressIndicatorSpec) s).trackInnerCornerRadius = Math.round(Math.min(i, ((LinearProgressIndicatorSpec) s).trackThickness / 2.0f));
            S s2 = this.spec;
            ((LinearProgressIndicatorSpec) s2).useRelativeTrackInnerCornerRadius = false;
            ((LinearProgressIndicatorSpec) s2).hasInnerCornerRadius = true;
            ((LinearProgressIndicatorSpec) s2).validateSpec();
            invalidate();
        }
    }

    public void setTrackInnerCornerRadiusFraction(float f) {
        S s = this.spec;
        if (((LinearProgressIndicatorSpec) s).trackInnerCornerRadiusFraction != f) {
            ((LinearProgressIndicatorSpec) s).trackInnerCornerRadiusFraction = Math.min(f, 0.5f);
            S s2 = this.spec;
            ((LinearProgressIndicatorSpec) s2).useRelativeTrackInnerCornerRadius = true;
            ((LinearProgressIndicatorSpec) s2).hasInnerCornerRadius = true;
            ((LinearProgressIndicatorSpec) s2).validateSpec();
            invalidate();
        }
    }

    public int getTrackStopIndicatorSize() {
        return ((LinearProgressIndicatorSpec) this.spec).trackStopIndicatorSize;
    }

    public void setTrackStopIndicatorSize(int i) {
        S s = this.spec;
        if (((LinearProgressIndicatorSpec) s).trackStopIndicatorSize != i) {
            ((LinearProgressIndicatorSpec) s).trackStopIndicatorSize = i;
            ((LinearProgressIndicatorSpec) s).validateSpec();
            invalidate();
        }
    }

    public Integer getTrackStopIndicatorPadding() {
        return ((LinearProgressIndicatorSpec) this.spec).trackStopIndicatorPadding;
    }

    public void setTrackStopIndicatorPadding(Integer num) {
        if (Objects.equals(((LinearProgressIndicatorSpec) this.spec).trackStopIndicatorPadding, num)) {
            return;
        }
        ((LinearProgressIndicatorSpec) this.spec).trackStopIndicatorPadding = num;
        invalidate();
    }

    public int getIndeterminateAnimationType() {
        return ((LinearProgressIndicatorSpec) this.spec).indeterminateAnimationType;
    }

    public void setIndeterminateAnimationType(int i) {
        if (((LinearProgressIndicatorSpec) this.spec).indeterminateAnimationType == i) {
            return;
        }
        if (visibleToUser() && isIndeterminate()) {
            throw new IllegalStateException("Cannot change indeterminate animation type while the progress indicator is show in indeterminate mode.");
        }
        S s = this.spec;
        ((LinearProgressIndicatorSpec) s).indeterminateAnimationType = i;
        ((LinearProgressIndicatorSpec) s).validateSpec();
        if (i == 0) {
            getIndeterminateDrawable().setAnimatorDelegate(new LinearIndeterminateContiguousAnimatorDelegate((LinearProgressIndicatorSpec) this.spec));
        } else {
            getIndeterminateDrawable().setAnimatorDelegate(new LinearIndeterminateDisjointAnimatorDelegate(getContext(), (LinearProgressIndicatorSpec) this.spec));
        }
        registerSwitchIndeterminateModeCallback();
        invalidate();
    }

    public int getIndicatorDirection() {
        return ((LinearProgressIndicatorSpec) this.spec).indicatorDirection;
    }

    public void setIndicatorDirection(int i) {
        S s = this.spec;
        ((LinearProgressIndicatorSpec) s).indicatorDirection = i;
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = (LinearProgressIndicatorSpec) s;
        boolean z = true;
        if (i != 1 && ((getLayoutDirection() != 1 || ((LinearProgressIndicatorSpec) this.spec).indicatorDirection != 2) && (getLayoutDirection() != 0 || i != 3))) {
            z = false;
        }
        linearProgressIndicatorSpec.drawHorizontallyInverse = z;
        invalidate();
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setProgressCompat(int i, boolean z) {
        S s = this.spec;
        if (s != 0 && ((LinearProgressIndicatorSpec) s).indeterminateAnimationType == 0 && isIndeterminate()) {
            return;
        }
        super.setProgressCompat(i, z);
    }
}
