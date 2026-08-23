package org.telegram.messenger.pip.activity;

/* JADX INFO: loaded from: classes.dex */
public interface IPipActivityAnimationListener {
    default void onEnterAnimationEnd(long j) {
    }

    default void onEnterAnimationStart(long j) {
    }

    default void onLeaveAnimationEnd(long j) {
    }

    default void onLeaveAnimationStart(long j) {
    }

    void onTransitionAnimationFrame();

    void onTransitionAnimationProgress(float f);
}
