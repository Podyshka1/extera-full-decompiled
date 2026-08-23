package com.google.android.material.loadingindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.R$attr;
import com.google.android.material.C1349R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ThemeEnforcement;

/* JADX INFO: loaded from: classes.dex */
public final class LoadingIndicatorSpec {
    int containerColor;
    int containerHeight;
    int containerWidth;
    int[] indicatorColors;
    int indicatorSize;
    boolean scaleToFit;

    public LoadingIndicatorSpec(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1349R.attr.loadingIndicatorStyle);
    }

    public LoadingIndicatorSpec(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, LoadingIndicator.DEF_STYLE_RES);
    }

    public LoadingIndicatorSpec(Context context, AttributeSet attributeSet, int i, int i2) {
        this.scaleToFit = false;
        this.indicatorColors = new int[0];
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(C1349R.dimen.m3_loading_indicator_shape_size);
        int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(C1349R.dimen.m3_loading_indicator_container_size);
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context, attributeSet, C1349R.styleable.LoadingIndicator, i, i2, new int[0]);
        this.indicatorSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1349R.styleable.LoadingIndicator_indicatorSize, dimensionPixelSize);
        this.containerWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1349R.styleable.LoadingIndicator_containerWidth, dimensionPixelSize2);
        this.containerHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1349R.styleable.LoadingIndicator_containerHeight, dimensionPixelSize2);
        loadIndicatorColors(context, typedArrayObtainStyledAttributes);
        this.containerColor = typedArrayObtainStyledAttributes.getColor(C1349R.styleable.LoadingIndicator_containerColor, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    private void loadIndicatorColors(Context context, TypedArray typedArray) {
        if (!typedArray.hasValue(C1349R.styleable.LoadingIndicator_indicatorColor)) {
            this.indicatorColors = new int[]{MaterialColors.getColor(context, R$attr.colorPrimary, -1)};
            return;
        }
        if (typedArray.peekValue(C1349R.styleable.LoadingIndicator_indicatorColor).type != 1) {
            this.indicatorColors = new int[]{typedArray.getColor(C1349R.styleable.LoadingIndicator_indicatorColor, -1)};
            return;
        }
        int[] intArray = context.getResources().getIntArray(typedArray.getResourceId(C1349R.styleable.LoadingIndicator_indicatorColor, -1));
        this.indicatorColors = intArray;
        if (intArray.length == 0) {
            throw new IllegalArgumentException("indicatorColors cannot be empty when indicatorColor is not used.");
        }
    }

    public void setScaleToFit(boolean z) {
        this.scaleToFit = z;
    }
}
