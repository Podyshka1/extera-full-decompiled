package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import com.google.android.material.C1451R;
import com.google.android.material.internal.ThemeEnforcement;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class LinearProgressIndicatorSpec extends BaseProgressIndicatorSpec {
    boolean drawHorizontallyInverse;
    public boolean hasInnerCornerRadius;
    public int indeterminateAnimationType;
    public int indicatorDirection;
    public int trackInnerCornerRadius;
    public float trackInnerCornerRadiusFraction;
    public Integer trackStopIndicatorPadding;
    public int trackStopIndicatorSize;
    public boolean useRelativeTrackInnerCornerRadius;

    public LinearProgressIndicatorSpec(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1451R.attr.linearProgressIndicatorStyle);
    }

    public LinearProgressIndicatorSpec(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, LinearProgressIndicator.DEF_STYLE_RES);
    }

    public LinearProgressIndicatorSpec(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context, attributeSet, C1451R.styleable.LinearProgressIndicator, C1451R.attr.linearProgressIndicatorStyle, LinearProgressIndicator.DEF_STYLE_RES, new int[0]);
        this.indeterminateAnimationType = typedArrayObtainStyledAttributes.getInt(C1451R.styleable.LinearProgressIndicator_indeterminateAnimationType, 1);
        this.indicatorDirection = typedArrayObtainStyledAttributes.getInt(C1451R.styleable.LinearProgressIndicator_indicatorDirectionLinear, 0);
        this.trackStopIndicatorSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1451R.styleable.LinearProgressIndicator_trackStopIndicatorSize, 0);
        if (typedArrayObtainStyledAttributes.hasValue(C1451R.styleable.LinearProgressIndicator_trackStopIndicatorPadding)) {
            this.trackStopIndicatorPadding = Integer.valueOf(typedArrayObtainStyledAttributes.getDimensionPixelSize(C1451R.styleable.LinearProgressIndicator_trackStopIndicatorPadding, 0));
        }
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(C1451R.styleable.LinearProgressIndicator_trackInnerCornerRadius);
        if (typedValuePeekValue != null) {
            int i3 = typedValuePeekValue.type;
            if (i3 == 5) {
                this.trackInnerCornerRadius = Math.min(TypedValue.complexToDimensionPixelSize(typedValuePeekValue.data, typedArrayObtainStyledAttributes.getResources().getDisplayMetrics()), this.trackThickness / 2);
                this.useRelativeTrackInnerCornerRadius = false;
                this.hasInnerCornerRadius = true;
            } else if (i3 == 6) {
                this.trackInnerCornerRadiusFraction = Math.min(typedValuePeekValue.getFraction(1.0f, 1.0f), 0.5f);
                this.useRelativeTrackInnerCornerRadius = true;
                this.hasInnerCornerRadius = true;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        validateSpec();
        this.drawHorizontallyInverse = this.indicatorDirection == 1;
    }

    public int getTrackInnerCornerRadiusInPx() {
        if (!this.hasInnerCornerRadius) {
            return getTrackCornerRadiusInPx();
        }
        if (this.useRelativeTrackInnerCornerRadius) {
            return (int) (this.trackThickness * this.trackInnerCornerRadiusFraction);
        }
        return this.trackInnerCornerRadius;
    }

    public int getActualTrackStopIndicatorSize() {
        return Math.min(this.trackStopIndicatorSize, this.trackThickness);
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicatorSpec
    public boolean useStrokeCap() {
        return super.useStrokeCap() && getTrackInnerCornerRadiusInPx() == getTrackCornerRadiusInPx();
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicatorSpec
    public void validateSpec() {
        super.validateSpec();
        if (this.trackStopIndicatorSize < 0) {
            f$$ExternalSyntheticBUOutline1.m212m("Stop indicator size must be >= 0.");
            return;
        }
        if (this.indeterminateAnimationType == 0) {
            if ((getTrackCornerRadiusInPx() > 0 || (this.hasInnerCornerRadius && getTrackInnerCornerRadiusInPx() > 0)) && this.indicatorTrackGapSize == 0) {
                f$$ExternalSyntheticBUOutline1.m212m("Rounded corners without gap are not supported in contiguous indeterminate animation.");
            } else {
                if (this.indicatorColors.length >= 3) {
                    return;
                }
                f$$ExternalSyntheticBUOutline1.m212m("Contiguous indeterminate animation must be used with 3 or more indicator colors.");
            }
        }
    }
}
