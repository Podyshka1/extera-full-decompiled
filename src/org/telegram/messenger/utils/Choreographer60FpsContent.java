package org.telegram.messenger.utils;

import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.util.SparseArray;
import android.view.Choreographer;
import android.view.View;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import me.vkryl.core.reference.ReferenceList;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;

/* JADX INFO: loaded from: classes.dex */
public final class Choreographer60FpsContent implements Choreographer.FrameCallback {
    private static Choreographer60FpsContent sInstance;
    private long mAccumulatedNs;
    private final Choreographer mChoreographer;
    private int mCounter;
    private final ReferenceList<Drawable> mDrawablesToInvalidate;
    private final ReferenceList<Drawable> mDrawablesToInvalidate30fps;
    private final SparseArray<CallbackGroup> mGroups;
    private long mLastVsyncNs;
    private final Set<FrameCallback> mOneShot;
    private final ReferenceList<View> mViewsToInvalidate;

    public interface FrameCallback {
        void doFrame(long j);
    }

    public static Choreographer60FpsContent getInstance() {
        checkMainThread();
        if (sInstance == null) {
            sInstance = new Choreographer60FpsContent();
        }
        return sInstance;
    }

    public static void onApplicationStateChanged() {
        Choreographer60FpsContent choreographer60FpsContent = sInstance;
        if (choreographer60FpsContent != null) {
            choreographer60FpsContent.mChoreographer.removeFrameCallback(choreographer60FpsContent);
            Choreographer60FpsContent choreographer60FpsContent2 = sInstance;
            choreographer60FpsContent2.mAccumulatedNs = 0L;
            choreographer60FpsContent2.mLastVsyncNs = 0L;
            if (!ApplicationLoader.isScreenOn || ApplicationLoader.mainInterfacePaused) {
                return;
            }
            Choreographer60FpsContent choreographer60FpsContent3 = sInstance;
            choreographer60FpsContent3.mChoreographer.postFrameCallback(choreographer60FpsContent3);
        }
    }

    public void postInvalidateDrawable(Drawable drawable) {
        checkMainThread();
        this.mDrawablesToInvalidate.add(drawable);
    }

    public void postInvalidateDrawable30fps(Drawable drawable) {
        checkMainThread();
        this.mDrawablesToInvalidate30fps.add(drawable);
    }

    public void addFrameCallback(Runnable runnable, int i) {
        checkMainThread();
        if (runnable == null) {
            return;
        }
        int iMax = Math.max(1, Math.min(i, 60));
        removeFrameCallback(runnable);
        getOrCreateGroup(iMax).runnableCallbacks.add(runnable);
    }

    public void addFrameCallback(FrameCallback frameCallback, int i) {
        checkMainThread();
        int iMax = Math.max(1, Math.min(i, 60));
        removeFrameCallback(frameCallback);
        getOrCreateGroup(iMax).callbacks.add(frameCallback);
    }

    public void removeFrameCallback(Runnable runnable) {
        checkMainThread();
        if (runnable == null) {
            return;
        }
        for (int i = 0; i < this.mGroups.size() && !this.mGroups.valueAt(i).runnableCallbacks.remove(runnable); i++) {
        }
    }

    public void removeFrameCallback(FrameCallback frameCallback) {
        checkMainThread();
        if (frameCallback == null) {
            return;
        }
        for (int i = 0; i < this.mGroups.size() && !this.mGroups.valueAt(i).callbacks.remove(frameCallback); i++) {
        }
    }

    private Choreographer60FpsContent() {
        Choreographer choreographer = Choreographer.getInstance();
        this.mChoreographer = choreographer;
        this.mOneShot = new LinkedHashSet();
        this.mGroups = new SparseArray<>();
        this.mDrawablesToInvalidate = new ReferenceList<>();
        this.mDrawablesToInvalidate30fps = new ReferenceList<>();
        this.mViewsToInvalidate = new ReferenceList<>();
        if (!ApplicationLoader.isScreenOn || ApplicationLoader.mainInterfacePaused) {
            return;
        }
        choreographer.postFrameCallback(this);
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j) {
        long j2 = this.mLastVsyncNs;
        if (j2 == 0) {
            this.mLastVsyncNs = j;
        } else {
            long j3 = this.mAccumulatedNs + (j - j2);
            this.mAccumulatedNs = j3;
            this.mLastVsyncNs = j;
            if (j3 >= 16666666) {
                this.mAccumulatedNs = j3 % 16666666;
                dispatchFrame(j);
            }
        }
        this.mChoreographer.postFrameCallback(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0038 A[LOOP:1: B:14:0x0032->B:16:0x0038, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004e A[LOOP:2: B:18:0x0048->B:20:0x004e, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void dispatchFrame(long j) {
        Iterator<FrameCallback> it;
        Iterator<Runnable> it2;
        for (int i = 0; i < this.mGroups.size(); i++) {
            CallbackGroup callbackGroupValueAt = this.mGroups.valueAt(i);
            int i2 = callbackGroupValueAt.stride;
            if (i2 > 0) {
                if (this.mCounter % i2 == 0) {
                    it = callbackGroupValueAt.callbacks.iterator();
                    while (it.hasNext()) {
                        it.next().doFrame(j);
                    }
                    it2 = callbackGroupValueAt.runnableCallbacks.iterator();
                    while (it2.hasNext()) {
                        it2.next().run();
                    }
                }
            } else {
                long j2 = callbackGroupValueAt.accumulatedNs + 16666666;
                callbackGroupValueAt.accumulatedNs = j2;
                long j3 = callbackGroupValueAt.intervalNs;
                if (j2 >= j3) {
                    callbackGroupValueAt.accumulatedNs = j2 % j3;
                    it = callbackGroupValueAt.callbacks.iterator();
                    while (it.hasNext()) {
                    }
                    it2 = callbackGroupValueAt.runnableCallbacks.iterator();
                    while (it2.hasNext()) {
                    }
                }
            }
        }
        Iterator<FrameCallback> it3 = this.mOneShot.iterator();
        while (it3.hasNext()) {
            it3.next().doFrame(j);
        }
        Iterator<View> it4 = this.mViewsToInvalidate.iterator();
        while (it4.hasNext()) {
            it4.next().invalidate();
        }
        Iterator<Drawable> it5 = this.mDrawablesToInvalidate.iterator();
        while (it5.hasNext()) {
            it5.next().invalidateSelf();
        }
        this.mViewsToInvalidate.clear();
        this.mDrawablesToInvalidate.clear();
        this.mOneShot.clear();
        if (this.mCounter % 2 == 0) {
            Iterator<Drawable> it6 = this.mDrawablesToInvalidate30fps.iterator();
            while (it6.hasNext()) {
                it6.next().invalidateSelf();
            }
            this.mDrawablesToInvalidate30fps.clear();
        }
        this.mCounter++;
    }

    private CallbackGroup getOrCreateGroup(int i) {
        CallbackGroup callbackGroup = this.mGroups.get(i);
        if (callbackGroup != null) {
            return callbackGroup;
        }
        CallbackGroup callbackGroup2 = new CallbackGroup(1000000000 / ((long) i), 60 % i == 0 ? 60 / i : 0);
        this.mGroups.put(i, callbackGroup2);
        return callbackGroup2;
    }

    public static final class CallbackGroup {
        long accumulatedNs;
        final long intervalNs;
        final int stride;
        final ReferenceList<FrameCallback> callbacks = new ReferenceList<>();
        final ReferenceList<Runnable> runnableCallbacks = new ReferenceList<>();

        public CallbackGroup(long j, int i) {
            this.intervalNs = j;
            this.stride = i;
        }
    }

    private static void checkMainThread() {
        if (BuildVars.DEBUG_PRIVATE_VERSION && Looper.myLooper() != Looper.getMainLooper()) {
            Segment$$ExternalSyntheticBUOutline1.m848m("Choreographer60FpsContent must be used on the main thread");
        }
    }
}
