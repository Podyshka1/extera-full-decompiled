package com.google.android.material.behavior;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;

/* JADX INFO: loaded from: classes5.dex */
final class HideRightViewOnScrollDelegate extends HideViewOnScrollDelegate {
    @Override // com.google.android.material.behavior.HideViewOnScrollDelegate
    int getTargetTranslation() {
        return 0;
    }

    @Override // com.google.android.material.behavior.HideViewOnScrollDelegate
    int getViewEdge() {
        return 0;
    }

    HideRightViewOnScrollDelegate() {
    }

    @Override // com.google.android.material.behavior.HideViewOnScrollDelegate
    <V extends View> int getSize(V v, ViewGroup.MarginLayoutParams marginLayoutParams) {
        return v.getMeasuredWidth() + marginLayoutParams.rightMargin;
    }

    @Override // com.google.android.material.behavior.HideViewOnScrollDelegate
    <V extends View> void setAdditionalHiddenOffset(V v, int i, int i2) {
        v.setTranslationX(i + i2);
    }

    @Override // com.google.android.material.behavior.HideViewOnScrollDelegate
    <V extends View> void setViewTranslation(V v, int i) {
        v.setTranslationX(i);
    }

    @Override // com.google.android.material.behavior.HideViewOnScrollDelegate
    <V extends View> ViewPropertyAnimator getViewTranslationAnimator(V v, int i) {
        return v.animate().translationX(i);
    }
}
