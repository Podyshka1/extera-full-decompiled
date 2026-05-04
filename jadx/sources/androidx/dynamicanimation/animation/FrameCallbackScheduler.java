package androidx.dynamicanimation.animation;

/* JADX INFO: loaded from: classes4.dex */
public interface FrameCallbackScheduler {
    boolean isCurrentThread();

    void postFrameCallback(Runnable runnable);
}
