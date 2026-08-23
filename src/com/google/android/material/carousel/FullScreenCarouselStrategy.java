package com.google.android.material.carousel;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes5.dex */
public class FullScreenCarouselStrategy extends CarouselStrategy {
    @Override // com.google.android.material.carousel.CarouselStrategy
    public KeylineState onFirstChildMeasuredWithMargins(Carousel carousel, View view) {
        int containerHeight;
        int i;
        int i2;
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (carousel.isHorizontal()) {
            containerHeight = carousel.getContainerWidth();
            i = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            i2 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        } else {
            containerHeight = carousel.getContainerHeight();
            i = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            i2 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }
        float f = i + i2;
        float f2 = containerHeight;
        return CarouselStrategyHelper.createLeftAlignedKeylineState(view.getContext(), f, containerHeight, new Arrangement(0, 0.0f, 0.0f, 0.0f, 0, 0.0f, 0, Math.min(f2 + f, f2), 1, f2));
    }
}
