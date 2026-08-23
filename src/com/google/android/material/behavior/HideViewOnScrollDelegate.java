package com.google.android.material.behavior;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;

/* JADX INFO: loaded from: classes5.dex */
abstract class HideViewOnScrollDelegate {
    abstract <V extends View> int getSize(V v, ViewGroup.MarginLayoutParams marginLayoutParams);

    abstract int getTargetTranslation();

    abstract int getViewEdge();

    abstract <V extends View> ViewPropertyAnimator getViewTranslationAnimator(V v, int i);

    abstract <V extends View> void setAdditionalHiddenOffset(V v, int i, int i2);

    abstract <V extends View> void setViewTranslation(V v, int i);

    HideViewOnScrollDelegate() {
    }
}
