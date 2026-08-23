package com.yandex.runtime.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class PlatformGLSurfaceViewBelowApi34Workaround extends PlatformGLSurfaceView {
    private final BufferedRunnable mBufferedRunnable;

    public PlatformGLSurfaceViewBelowApi34Workaround(Context context) {
        this(context, null, 0, false);
    }

    public PlatformGLSurfaceViewBelowApi34Workaround(Context context, boolean z) {
        this(context, null, 0, z);
    }

    public PlatformGLSurfaceViewBelowApi34Workaround(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, false);
    }

    public PlatformGLSurfaceViewBelowApi34Workaround(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, false);
    }

    public PlatformGLSurfaceViewBelowApi34Workaround(Context context, AttributeSet attributeSet, int i, boolean z) {
        super(context, attributeSet, i, z);
        this.mBufferedRunnable = new BufferedRunnable();
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceHolder.Callback2
    public void surfaceRedrawNeededAsync(SurfaceHolder surfaceHolder, Runnable runnable) {
        super.surfaceRedrawNeededAsync(surfaceHolder, this.mBufferedRunnable.add(runnable));
    }

    public static final class BufferedRunnable {
        private final List<StampedRunnable> mBuffer = new ArrayList();
        private long mGeneration = 0;

        public Runnable add(Runnable runnable) {
            long j;
            synchronized (this.mBuffer) {
                j = this.mGeneration + 1;
                this.mGeneration = j;
                this.mBuffer.add(new StampedRunnable(runnable, j));
            }
            return new Commit(j);
        }

        public static final class StampedRunnable implements Runnable {
            private final Runnable mWrapped;
            public final long stamp;

            public StampedRunnable(Runnable runnable, long j) {
                this.mWrapped = runnable;
                this.stamp = j;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.mWrapped.run();
            }
        }

        public final class Commit implements Runnable {
            private final long mGeneration;

            public Commit(long j) {
                this.mGeneration = j;
            }

            @Override // java.lang.Runnable
            public void run() {
                ArrayList arrayList = new ArrayList();
                synchronized (BufferedRunnable.this.mBuffer) {
                    try {
                        Iterator it = BufferedRunnable.this.mBuffer.iterator();
                        while (it.hasNext()) {
                            StampedRunnable stampedRunnable = (StampedRunnable) it.next();
                            if (stampedRunnable.stamp > this.mGeneration) {
                                break;
                            }
                            arrayList.add(stampedRunnable);
                            it.remove();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    ((Runnable) obj).run();
                }
            }
        }
    }
}
