package com.google.android.material.carousel;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.carousel.CarouselStrategy;
import com.google.android.material.carousel.KeylineState;

/* JADX INFO: loaded from: classes5.dex */
public final class UncontainedCarouselStrategy extends CarouselStrategy {
    private static final float MEDIUM_LARGE_ITEM_PERCENTAGE_THRESHOLD = 0.85f;

    @Override // com.google.android.material.carousel.CarouselStrategy
    public KeylineState onFirstChildMeasuredWithMargins(Carousel carousel, View view) {
        int containerWidth = carousel.isHorizontal() ? carousel.getContainerWidth() : carousel.getContainerHeight();
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        float f = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        float measuredHeight = view.getMeasuredHeight();
        if (carousel.isHorizontal()) {
            f = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            measuredHeight = view.getMeasuredWidth();
        }
        float f2 = measuredHeight;
        float f3 = f;
        float f4 = f2 + f3;
        float extraSmallSize = CarouselStrategyHelper.getExtraSmallSize(view.getContext()) + f3;
        float extraSmallSize2 = CarouselStrategyHelper.getExtraSmallSize(view.getContext()) + f3;
        int iMax = Math.max(1, (int) Math.floor(r1 / f4));
        float f5 = containerWidth - (iMax * f4);
        if (carousel.getCarouselAlignment() == 1) {
            float f6 = f5 / 2.0f;
            return createCenterAlignedKeylineState(containerWidth, f3, f4, iMax, Math.max(Math.min(3.0f * f6, f4), getSmallItemSizeMin() + f3), extraSmallSize2, f6);
        }
        return createLeftAlignedKeylineState(view.getContext(), f3, containerWidth, f4, iMax, calculateMediumChildSize(extraSmallSize, f4, f5), f5 <= 0.0f ? 0 : 1, extraSmallSize2);
    }

    private float calculateMediumChildSize(float f, float f2, float f3) {
        float fMax = Math.max(1.5f * f3, f);
        float f4 = MEDIUM_LARGE_ITEM_PERCENTAGE_THRESHOLD * f2;
        if (fMax > f4) {
            fMax = Math.max(f4, f3 * 1.2f);
        }
        return Math.min(f2, fMax);
    }

    private KeylineState createCenterAlignedKeylineState(int i, float f, float f2, int i2, float f3, float f4, float f5) {
        float fMin = Math.min(f4, f2);
        float childMaskPercentage = CarouselStrategy.getChildMaskPercentage(fMin, f2, f);
        float childMaskPercentage2 = CarouselStrategy.getChildMaskPercentage(f3, f2, f);
        float f6 = f3 / 2.0f;
        float f7 = (f5 + 0.0f) - f6;
        float f8 = f7 + f6;
        float f9 = fMin / 2.0f;
        float f10 = (i2 * f2) + f8;
        KeylineState.Builder builderAddKeylineRange = new KeylineState.Builder(f2, i).addAnchorKeyline((f7 - f6) - f9, childMaskPercentage, fMin).addKeyline(f7, childMaskPercentage2, f3, false).addKeylineRange((f2 / 2.0f) + f8, 0.0f, f2, i2, true);
        builderAddKeylineRange.addKeyline(f6 + f10, childMaskPercentage2, f3, false);
        builderAddKeylineRange.addAnchorKeyline(f10 + f3 + f9, childMaskPercentage, fMin);
        return builderAddKeylineRange.build();
    }

    private KeylineState createLeftAlignedKeylineState(Context context, float f, int i, float f2, int i2, float f3, int i3, float f4) {
        float fMin = Math.min(f4, f2);
        float fMax = Math.max(fMin, 0.5f * f3);
        float childMaskPercentage = CarouselStrategy.getChildMaskPercentage(fMax, f2, f);
        float childMaskPercentage2 = CarouselStrategy.getChildMaskPercentage(fMin, f2, f);
        float childMaskPercentage3 = CarouselStrategy.getChildMaskPercentage(f3, f2, f);
        float f5 = (i2 * f2) + 0.0f;
        KeylineState.Builder builderAddKeylineRange = new KeylineState.Builder(f2, i).addAnchorKeyline(0.0f - (fMax / 2.0f), childMaskPercentage, fMax).addKeylineRange(f2 / 2.0f, 0.0f, f2, i2, true);
        if (i3 > 0) {
            float f6 = (f3 / 2.0f) + f5;
            f5 += f3;
            builderAddKeylineRange.addKeyline(f6, childMaskPercentage3, f3, false);
        }
        builderAddKeylineRange.addAnchorKeyline(f5 + (CarouselStrategyHelper.getExtraSmallSize(context) / 2.0f), childMaskPercentage2, fMin);
        return builderAddKeylineRange.build();
    }

    @Override // com.google.android.material.carousel.CarouselStrategy
    public CarouselStrategy.StrategyType getStrategyType() {
        return CarouselStrategy.StrategyType.UNCONTAINED;
    }
}
