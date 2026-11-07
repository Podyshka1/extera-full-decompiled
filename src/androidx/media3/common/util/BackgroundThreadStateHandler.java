package androidx.media3.common.util;

import android.os.Looper;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class BackgroundThreadStateHandler<T> {
    private final HandlerWrapper backgroundHandler;
    private T backgroundState;
    private final HandlerWrapper foregroundHandler;
    private T foregroundState;
    private final StateChangeListener<T> onStateChanged;
    private int pendingOperations;

    public interface StateChangeListener<T> {
        void onStateChanged(T t, T t2);
    }

    public BackgroundThreadStateHandler(T t, Looper looper, Looper looper2, Clock clock, StateChangeListener<T> stateChangeListener) {
        this.backgroundHandler = clock.createHandler(looper, null);
        this.foregroundHandler = clock.createHandler(looper2, null);
        this.foregroundState = t;
        this.backgroundState = t;
        this.onStateChanged = stateChangeListener;
    }

    public T get() {
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper == this.foregroundHandler.getLooper()) {
            return this.foregroundState;
        }
        Preconditions.checkState(looperMyLooper == this.backgroundHandler.getLooper());
        return this.backgroundState;
    }

    public void updateStateAsync(Function<T, T> function, final Function<T, T> function2) {
        Preconditions.checkState(Looper.myLooper() == this.foregroundHandler.getLooper());
        this.pendingOperations++;
        runInBackground(new Runnable() { // from class: androidx.media3.common.util.BackgroundThreadStateHandler$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                BackgroundThreadStateHandler.m1879$r8$lambda$f0hFC73tfQBWeDExFIZmwNfoAE(this.f$0, function2);
            }
        });
        updateStateInForeground(function.apply(this.foregroundState));
    }

    /* JADX INFO: renamed from: $r8$lambda$f0hFC73tfQBWeDExFIZmwNfoA-E, reason: not valid java name */
    public static /* synthetic */ void m1879$r8$lambda$f0hFC73tfQBWeDExFIZmwNfoAE(final BackgroundThreadStateHandler backgroundThreadStateHandler, Function function) {
        final T t = (T) function.apply(backgroundThreadStateHandler.backgroundState);
        backgroundThreadStateHandler.backgroundState = t;
        backgroundThreadStateHandler.runInForeground(new Runnable() { // from class: androidx.media3.common.util.BackgroundThreadStateHandler$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                BackgroundThreadStateHandler.m1880$r8$lambda$lNGZQGzRQnsJ9W6th9dnrHlBQ(this.f$0, t);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$lNGZQG-zRQnsJ9W6th9-dnrHlBQ, reason: not valid java name */
    public static /* synthetic */ void m1880$r8$lambda$lNGZQGzRQnsJ9W6th9dnrHlBQ(BackgroundThreadStateHandler backgroundThreadStateHandler, Object obj) {
        int i = backgroundThreadStateHandler.pendingOperations - 1;
        backgroundThreadStateHandler.pendingOperations = i;
        if (i == 0) {
            backgroundThreadStateHandler.updateStateInForeground(obj);
        }
    }

    public void setStateInBackground(final T t) {
        this.backgroundState = t;
        runInForeground(new Runnable() { // from class: androidx.media3.common.util.BackgroundThreadStateHandler$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                BackgroundThreadStateHandler.$r8$lambda$hhYjRnaRRUwjgYpDYJM_auE3ai0(this.f$0, t);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$hhYjRnaRRUwjgYpDYJM_auE3ai0(BackgroundThreadStateHandler backgroundThreadStateHandler, Object obj) {
        if (backgroundThreadStateHandler.pendingOperations == 0) {
            backgroundThreadStateHandler.updateStateInForeground(obj);
        }
    }

    public void runInBackground(Runnable runnable) {
        if (this.backgroundHandler.getLooper().getThread().isAlive()) {
            this.backgroundHandler.post(runnable);
        }
    }

    private void runInForeground(Runnable runnable) {
        if (this.foregroundHandler.getLooper().getThread().isAlive()) {
            this.foregroundHandler.post(runnable);
        }
    }

    private void updateStateInForeground(T t) {
        T t2 = this.foregroundState;
        this.foregroundState = t;
        if (t2.equals(t)) {
            return;
        }
        this.onStateChanged.onStateChanged(t2, t);
    }
}
