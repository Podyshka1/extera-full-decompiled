package org.telegram.messenger.pip.activity;

/* JADX INFO: loaded from: classes.dex */
public interface IPipActivityAnimationListener {
    void onEnterAnimationEnd(long j);

    void onEnterAnimationStart(long j);

    void onLeaveAnimationEnd(long j);

    void onLeaveAnimationStart(long j);

    void onTransitionAnimationFrame();

    void onTransitionAnimationProgress(float f);

    /* JADX INFO: renamed from: org.telegram.messenger.pip.activity.IPipActivityAnimationListener$-CC, reason: invalid class name */
    /* JADX INFO: loaded from: classes5.dex */
    public abstract /* synthetic */ class CC {
        public static void $default$onEnterAnimationStart(IPipActivityAnimationListener iPipActivityAnimationListener, long j) {
        }

        public static void $default$onEnterAnimationEnd(IPipActivityAnimationListener iPipActivityAnimationListener, long j) {
        }

        public static void $default$onLeaveAnimationStart(IPipActivityAnimationListener iPipActivityAnimationListener, long j) {
        }

        public static void $default$onLeaveAnimationEnd(IPipActivityAnimationListener iPipActivityAnimationListener, long j) {
        }
    }
}
