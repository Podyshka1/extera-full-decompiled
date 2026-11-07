package com.google.android.material.transition;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes5.dex */
public interface VisibilityAnimatorProvider {
    Animator createAppear(ViewGroup viewGroup, View view);

    Animator createDisappear(ViewGroup viewGroup, View view);
}
