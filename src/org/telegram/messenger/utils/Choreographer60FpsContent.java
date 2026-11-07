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
    private static final long[] FRAME_MASKS = buildFrameMasks();
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

    private void dispatchFrame(long j) {
        long j2 = 1 << this.mCounter;
        for (int i = 0; i < this.mGroups.size(); i++) {
            CallbackGroup callbackGroupValueAt = this.mGroups.valueAt(i);
            if ((callbackGroupValueAt.frameMask & j2) != 0) {
                ReferenceList<Runnable> referenceList = callbackGroupValueAt.runnableCallbacksOnce;
                if (referenceList != null) {
                    callbackGroupValueAt.runnableCallbacksOnce = null;
                    Iterator<Runnable> it = referenceList.iterator();
                    while (it.hasNext()) {
                        it.next().run();
                    }
                }
                Iterator<FrameCallback> it2 = callbackGroupValueAt.callbacks.iterator();
                while (it2.hasNext()) {
                    it2.next().doFrame(j);
                }
                Iterator<Runnable> it3 = callbackGroupValueAt.runnableCallbacks.iterator();
                while (it3.hasNext()) {
                    it3.next().run();
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
        int i2 = this.mCounter + 1;
        this.mCounter = i2;
        if (i2 == 60) {
            this.mCounter = 0;
        }
    }

    private CallbackGroup getOrCreateGroup(int i) {
        int iMax = Math.max(1, Math.min(i, 60));
        CallbackGroup callbackGroup = this.mGroups.get(iMax);
        if (callbackGroup != null) {
            return callbackGroup;
        }
        CallbackGroup callbackGroup2 = new CallbackGroup(FRAME_MASKS[iMax - 1]);
        this.mGroups.put(iMax, callbackGroup2);
        return callbackGroup2;
    }

    private static long[] buildFrameMasks() {
        long[] jArr = new long[60];
        int i = 0;
        while (i < 60) {
            int i2 = i + 1;
            jArr[i] = buildFrameMask(i2);
            i = i2;
        }
        return jArr;
    }

    private static long buildFrameMask(int i) {
        int i2;
        int i3;
        boolean z;
        long j;
        long j2;
        int i4 = 1;
        int i5 = 2;
        int i6 = 1;
        int i7 = 2;
        while (true) {
            i2 = 60;
            if (i7 > 60) {
                break;
            }
            if (60 % i7 == 0 && Math.abs(i7 - i) < Math.abs(i6 - i)) {
                i6 = i7;
            }
            i7++;
        }
        int i8 = 60 / i6;
        long j3 = 0;
        for (int i9 = 0; i9 < 60; i9 += i8) {
            j3 |= 1 << i9;
        }
        int i10 = i - i6;
        int iAbs = Math.abs(i10);
        int i11 = 0;
        while (i11 < iAbs) {
            int i12 = (((i11 * 2) + i4) * i2) / (iAbs * 2);
            int i13 = 0;
            while (true) {
                if (i13 >= i2) {
                    i3 = i5;
                    break;
                }
                int i14 = 0;
                while (true) {
                    i3 = i5;
                    if (i14 >= i5) {
                        z = false;
                        break;
                    }
                    int i15 = (((i14 == 0 ? i13 : -i13) + i12) + i2) % i2;
                    j = 1 << i15;
                    if (i10 <= 0) {
                        if ((j3 & j) != 0) {
                            j2 = (~j) & j3;
                            break;
                        }
                        i14++;
                        i5 = i3;
                        i2 = 60;
                    } else {
                        if ((j3 & j) == 0 && (i8 % 2 != 0 || i15 % 2 != 0)) {
                            break;
                        }
                        i14++;
                        i5 = i3;
                        i2 = 60;
                    }
                }
                j2 = j3 | j;
                j3 = j2;
                z = true;
                if (z) {
                    break;
                }
                i13++;
                i5 = i3;
                i2 = 60;
            }
            i11++;
            i5 = i3;
            i4 = 1;
            i2 = 60;
        }
        return j3;
    }

    public static final class CallbackGroup {
        final long frameMask;
        ReferenceList<Runnable> runnableCallbacksOnce;
        final ReferenceList<FrameCallback> callbacks = new ReferenceList<>();
        final ReferenceList<Runnable> runnableCallbacks = new ReferenceList<>();

        public CallbackGroup(long j) {
            this.frameMask = j;
        }
    }

    private static void checkMainThread() {
        if (BuildVars.DEBUG_PRIVATE_VERSION && Looper.myLooper() != Looper.getMainLooper()) {
            Segment$$ExternalSyntheticBUOutline1.m973m("Choreographer60FpsContent must be used on the main thread");
        }
    }
}
