package com.google.android.material.behavior;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;

/* JADX INFO: loaded from: classes5.dex */
final class HideBottomViewOnScrollDelegate extends HideViewOnScrollDelegate {
    @Override // com.google.android.material.behavior.HideViewOnScrollDelegate
    int getTargetTranslation() {
        return 0;
    }

    @Override // com.google.android.material.behavior.HideViewOnScrollDelegate
    int getViewEdge() {
        return 1;
    }

    HideBottomViewOnScrollDelegate() {
    }

    @Override // com.google.android.material.behavior.HideViewOnScrollDelegate
    <V extends View> int getSize(V v, ViewGroup.MarginLayoutParams marginLayoutParams) {
        return v.getMeasuredHeight() + marginLayoutParams.bottomMargin;
    }

    @Override // com.google.android.material.behavior.HideViewOnScrollDelegate
    <V extends View> void setAdditionalHiddenOffset(V v, int i, int i2) {
        v.setTranslationY(i + i2);
    }

    @Override // com.google.android.material.behavior.HideViewOnScrollDelegate
    <V extends View> void setViewTranslation(V v, int i) {
        v.setTranslationY(i);
    }

    @Override // com.google.android.material.behavior.HideViewOnScrollDelegate
    <V extends View> ViewPropertyAnimator getViewTranslationAnimator(V v, int i) {
        return v.animate().translationY(i);
    }
}
