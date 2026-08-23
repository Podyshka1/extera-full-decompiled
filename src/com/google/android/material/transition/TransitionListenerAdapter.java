package com.google.android.material.transition;

import androidx.transition.Transition;

/* JADX INFO: loaded from: classes5.dex */
abstract class TransitionListenerAdapter implements Transition.TransitionListener {
    @Override // androidx.transition.Transition.TransitionListener
    public void onTransitionCancel(Transition transition) {
    }

    @Override // androidx.transition.Transition.TransitionListener
    public void onTransitionEnd(Transition transition) {
    }

    @Override // androidx.transition.Transition.TransitionListener
    public /* bridge */ /* synthetic */ void onTransitionEnd(Transition transition, boolean z) {
        onTransitionEnd(transition);
    }

    @Override // androidx.transition.Transition.TransitionListener
    public void onTransitionPause(Transition transition) {
    }

    @Override // androidx.transition.Transition.TransitionListener
    public void onTransitionResume(Transition transition) {
    }

    @Override // androidx.transition.Transition.TransitionListener
    public void onTransitionStart(Transition transition) {
    }

    @Override // androidx.transition.Transition.TransitionListener
    public /* bridge */ /* synthetic */ void onTransitionStart(Transition transition, boolean z) {
        onTransitionStart(transition);
    }

    TransitionListenerAdapter() {
    }
}
