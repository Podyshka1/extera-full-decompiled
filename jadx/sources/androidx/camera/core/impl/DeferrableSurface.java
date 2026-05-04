package androidx.camera.core.impl;

import android.util.Log;
import android.util.Size;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DeferrableSurface {
    private CallbackToFutureAdapter.Completer mCloseCompleter;
    private final ListenableFuture mCloseFuture;
    Class mContainerClass;
    private final Size mPrescribedSize;
    private final int mPrescribedStreamFormat;
    private CallbackToFutureAdapter.Completer mTerminationCompleter;
    private final ListenableFuture mTerminationFuture;
    public static final Size SIZE_UNDEFINED = new Size(0, 0);
    private static final boolean DEBUG = Logger.isDebugEnabled("DeferrableSurface");
    private static final AtomicInteger USED_COUNT = new AtomicInteger(0);
    private static final AtomicInteger TOTAL_COUNT = new AtomicInteger(0);
    private final Object mLock = new Object();
    private int mUseCount = 0;
    private boolean mClosed = false;

    protected abstract ListenableFuture provideSurface();

    public static final class SurfaceUnavailableException extends Exception {
        public SurfaceUnavailableException(String str) {
            super(str);
        }
    }

    public static final class SurfaceClosedException extends Exception {
        DeferrableSurface mDeferrableSurface;

        public SurfaceClosedException(String str, DeferrableSurface deferrableSurface) {
            super(str);
            this.mDeferrableSurface = deferrableSurface;
        }

        public DeferrableSurface getDeferrableSurface() {
            return this.mDeferrableSurface;
        }
    }

    public DeferrableSurface(Size size, int i) {
        this.mPrescribedSize = size;
        this.mPrescribedStreamFormat = i;
        ListenableFuture future = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.core.impl.DeferrableSurface$$ExternalSyntheticLambda0
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return DeferrableSurface.m1981$r8$lambda$2bNbZSrwzPE6VUuBbHBM9VrhXU(this.f$0, completer);
            }
        });
        this.mTerminationFuture = future;
        this.mCloseFuture = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.core.impl.DeferrableSurface$$ExternalSyntheticLambda1
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return DeferrableSurface.$r8$lambda$n5A2Gczc3HX9R1GqVs9IlIvNPv4(this.f$0, completer);
            }
        });
        if (Logger.isDebugEnabled("DeferrableSurface")) {
            printGlobalDebugCounts("Surface created", TOTAL_COUNT.incrementAndGet(), USED_COUNT.get());
            final String stackTraceString = Log.getStackTraceString(new Exception());
            future.addListener(new Runnable() { // from class: androidx.camera.core.impl.DeferrableSurface$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    DeferrableSurface.$r8$lambda$o2NHrpK5pP8NNndqchJRakLjc8U(this.f$0, stackTraceString);
                }
            }, CameraXExecutors.directExecutor());
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$2bNbZSrwzPE-6VUuBbHBM9VrhXU, reason: not valid java name */
    public static /* synthetic */ Object m1981$r8$lambda$2bNbZSrwzPE6VUuBbHBM9VrhXU(DeferrableSurface deferrableSurface, CallbackToFutureAdapter.Completer completer) {
        synchronized (deferrableSurface.mLock) {
            deferrableSurface.mTerminationCompleter = completer;
        }
        return "DeferrableSurface-termination(" + deferrableSurface + ")";
    }

    public static /* synthetic */ Object $r8$lambda$n5A2Gczc3HX9R1GqVs9IlIvNPv4(DeferrableSurface deferrableSurface, CallbackToFutureAdapter.Completer completer) {
        synchronized (deferrableSurface.mLock) {
            deferrableSurface.mCloseCompleter = completer;
        }
        return "DeferrableSurface-close(" + deferrableSurface + ")";
    }

    public static /* synthetic */ void $r8$lambda$o2NHrpK5pP8NNndqchJRakLjc8U(DeferrableSurface deferrableSurface, String str) {
        deferrableSurface.getClass();
        try {
            deferrableSurface.mTerminationFuture.get();
            deferrableSurface.printGlobalDebugCounts("Surface terminated", TOTAL_COUNT.decrementAndGet(), USED_COUNT.get());
        } catch (Exception e) {
            Logger.m78e("DeferrableSurface", "Unexpected surface termination for " + deferrableSurface + "\nStack Trace:\n" + str);
            synchronized (deferrableSurface.mLock) {
                throw new IllegalArgumentException(String.format("DeferrableSurface %s [closed: %b, use_count: %s] terminated with unexpected exception.", deferrableSurface, Boolean.valueOf(deferrableSurface.mClosed), Integer.valueOf(deferrableSurface.mUseCount)), e);
            }
        }
    }

    private void printGlobalDebugCounts(String str, int i, int i2) {
        if (!DEBUG && Logger.isDebugEnabled("DeferrableSurface")) {
            Logger.m76d("DeferrableSurface", "DeferrableSurface usage statistics may be inaccurate since debug logging was not enabled at static initialization time. App restart may be required to enable accurate usage statistics.");
        }
        Logger.m76d("DeferrableSurface", str + "[total_surfaces=" + i + ", used_surfaces=" + i2 + "](" + this + "}");
    }

    public final ListenableFuture getSurface() {
        synchronized (this.mLock) {
            try {
                if (this.mClosed) {
                    return Futures.immediateFailedFuture(new SurfaceClosedException("DeferrableSurface already closed.", this));
                }
                return provideSurface();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public ListenableFuture getTerminationFuture() {
        return Futures.nonCancellationPropagating(this.mTerminationFuture);
    }

    public void incrementUseCount() {
        synchronized (this.mLock) {
            try {
                int i = this.mUseCount;
                if (i == 0 && this.mClosed) {
                    throw new SurfaceClosedException("Cannot begin use on a closed surface.", this);
                }
                this.mUseCount = i + 1;
                if (Logger.isDebugEnabled("DeferrableSurface")) {
                    if (this.mUseCount == 1) {
                        printGlobalDebugCounts("New surface in use", TOTAL_COUNT.get(), USED_COUNT.incrementAndGet());
                    }
                    Logger.m76d("DeferrableSurface", "use count+1, useCount=" + this.mUseCount + " " + this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void close() {
        CallbackToFutureAdapter.Completer completer;
        synchronized (this.mLock) {
            try {
                if (this.mClosed) {
                    completer = null;
                } else {
                    this.mClosed = true;
                    this.mCloseCompleter.set(null);
                    if (this.mUseCount == 0) {
                        completer = this.mTerminationCompleter;
                        this.mTerminationCompleter = null;
                    } else {
                        completer = null;
                    }
                    if (Logger.isDebugEnabled("DeferrableSurface")) {
                        Logger.m76d("DeferrableSurface", "surface closed,  useCount=" + this.mUseCount + " closed=true " + this);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (completer != null) {
            completer.set(null);
        }
    }

    public ListenableFuture getCloseFuture() {
        return Futures.nonCancellationPropagating(this.mCloseFuture);
    }

    public void decrementUseCount() {
        CallbackToFutureAdapter.Completer completer;
        synchronized (this.mLock) {
            try {
                int i = this.mUseCount;
                if (i == 0) {
                    throw new IllegalStateException("Decrementing use count occurs more times than incrementing");
                }
                int i2 = i - 1;
                this.mUseCount = i2;
                if (i2 == 0 && this.mClosed) {
                    completer = this.mTerminationCompleter;
                    this.mTerminationCompleter = null;
                } else {
                    completer = null;
                }
                if (Logger.isDebugEnabled("DeferrableSurface")) {
                    Logger.m76d("DeferrableSurface", "use count-1,  useCount=" + this.mUseCount + " closed=" + this.mClosed + " " + this);
                    if (this.mUseCount == 0) {
                        printGlobalDebugCounts("Surface no longer in use", TOTAL_COUNT.get(), USED_COUNT.decrementAndGet());
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (completer != null) {
            completer.set(null);
        }
    }

    public Size getPrescribedSize() {
        return this.mPrescribedSize;
    }

    public int getPrescribedStreamFormat() {
        return this.mPrescribedStreamFormat;
    }

    public boolean isClosed() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mClosed;
        }
        return z;
    }

    public Class getContainerClass() {
        return this.mContainerClass;
    }

    public void setContainerClass(Class cls) {
        this.mContainerClass = cls;
    }
}
