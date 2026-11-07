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

    public void postInvalidateView(View view) {
        checkMainThread();
        this.mViewsToInvalidate.add(view);
    }

    public void addFrameCallbackOnce(Runnable runnable, int i) {
        checkMainThread();
        if (runnable == null) {
            return;
        }
        int iMax = Math.max(1, Math.min(i, 60));
        removeFrameCallbackOnce(runnable);
        CallbackGroup orCreateGroup = getOrCreateGroup(iMax);
        if (orCreateGroup.runnableCallbacksOnce == null) {
            orCreateGroup.runnableCallbacksOnce = new ReferenceList<>();
        }
        orCreateGroup.runnableCallbacksOnce.add(runnable);
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

    public void removeFrameCallbackOnce(Runnable runnable) {
        checkMainThread();
        if (runnable == null) {
            return;
        }
        for (int i = 0; i < this.mGroups.size(); i++) {
            ReferenceList<Runnable> referenceList = this.mGroups.valueAt(i).runnableCallbacksOnce;
            if (referenceList != null && referenceList.remove(runnable)) {
                return;
            }
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

    /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0053 A[LOOP:2: B:20:0x004d->B:22:0x0053, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0069 A[LOOP:3: B:24:0x0063->B:26:0x0069, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void dispatchFrame(long j) {
        ReferenceList<Runnable> referenceList;
        Iterator<FrameCallback> it;
        Iterator<Runnable> it2;
        for (int i = 0; i < this.mGroups.size(); i++) {
            CallbackGroup callbackGroupValueAt = this.mGroups.valueAt(i);
            int i2 = callbackGroupValueAt.stride;
            if (i2 > 0) {
                if (this.mCounter % i2 == 0) {
                    referenceList = callbackGroupValueAt.runnableCallbacksOnce;
                    if (referenceList != null) {
                        callbackGroupValueAt.runnableCallbacksOnce = null;
                        Iterator<Runnable> it3 = referenceList.iterator();
                        while (it3.hasNext()) {
                            it3.next().run();
                        }
                    }
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
                    referenceList = callbackGroupValueAt.runnableCallbacksOnce;
                    if (referenceList != null) {
                    }
                    it = callbackGroupValueAt.callbacks.iterator();
                    while (it.hasNext()) {
                    }
                    it2 = callbackGroupValueAt.runnableCallbacks.iterator();
                    while (it2.hasNext()) {
                    }
                }
            }
        }
        Iterator<FrameCallback> it4 = this.mOneShot.iterator();
        while (it4.hasNext()) {
            it4.next().doFrame(j);
        }
        Iterator<View> it5 = this.mViewsToInvalidate.iterator();
        while (it5.hasNext()) {
            it5.next().invalidate();
        }
        Iterator<Drawable> it6 = this.mDrawablesToInvalidate.iterator();
        while (it6.hasNext()) {
            it6.next().invalidateSelf();
        }
        this.mViewsToInvalidate.clear();
        this.mDrawablesToInvalidate.clear();
        this.mOneShot.clear();
        if (this.mCounter % 2 == 0) {
            Iterator<Drawable> it7 = this.mDrawablesToInvalidate30fps.iterator();
            while (it7.hasNext()) {
                it7.next().invalidateSelf();
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
        ReferenceList<Runnable> runnableCallbacksOnce;
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
            Segment$$ExternalSyntheticBUOutline1.m925m("Choreographer60FpsContent must be used on the main thread");
        }
    }
}
