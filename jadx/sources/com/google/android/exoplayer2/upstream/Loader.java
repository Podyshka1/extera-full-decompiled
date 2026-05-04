package com.google.android.exoplayer2.upstream;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.TraceUtil;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import org.telegram.messenger.MediaDataController;

/* JADX INFO: loaded from: classes4.dex */
public final class Loader implements LoaderErrorThrower {
    public static final LoadErrorAction DONT_RETRY;
    public static final LoadErrorAction DONT_RETRY_FATAL;
    public static final LoadErrorAction RETRY = createRetryAction(false, -9223372036854775807L);
    public static final LoadErrorAction RETRY_RESET_ERROR_COUNT = createRetryAction(true, -9223372036854775807L);
    private LoadTask currentTask;
    private final ExecutorService downloadExecutorService;
    private IOException fatalError;

    public interface Callback {
        void onLoadCanceled(Loadable loadable, long j, long j2, boolean z);

        void onLoadCompleted(Loadable loadable, long j, long j2);

        LoadErrorAction onLoadError(Loadable loadable, long j, long j2, IOException iOException, int i);
    }

    public interface Loadable {
        void cancelLoad();

        void load();
    }

    public interface ReleaseCallback {
        void onLoaderReleased();
    }

    public static final class UnexpectedLoaderException extends IOException {
        public UnexpectedLoaderException(Throwable th) {
            super("Unexpected " + th.getClass().getSimpleName() + ": " + th.getMessage(), th);
        }
    }

    static {
        long j = -9223372036854775807L;
        DONT_RETRY = new LoadErrorAction(2, j);
        DONT_RETRY_FATAL = new LoadErrorAction(3, j);
    }

    public static final class LoadErrorAction {
        private final long retryDelayMillis;
        private final int type;

        private LoadErrorAction(int i, long j) {
            this.type = i;
            this.retryDelayMillis = j;
        }

        public boolean isRetry() {
            int i = this.type;
            return i == 0 || i == 1;
        }
    }

    public Loader(String str) {
        this.downloadExecutorService = Util.newSingleThreadExecutor("ExoPlayer:Loader:" + str);
    }

    public static LoadErrorAction createRetryAction(boolean z, long j) {
        return new LoadErrorAction(z ? 1 : 0, j);
    }

    public boolean hasFatalError() {
        return this.fatalError != null;
    }

    public void clearFatalError() {
        this.fatalError = null;
    }

    public long startLoading(Loadable loadable, Callback callback, int i) {
        Looper looper = (Looper) Assertions.checkStateNotNull(Looper.myLooper());
        this.fatalError = null;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        new LoadTask(looper, loadable, callback, i, jElapsedRealtime).start(0L);
        return jElapsedRealtime;
    }

    public boolean isLoading() {
        return this.currentTask != null;
    }

    public void cancelLoading() {
        ((LoadTask) Assertions.checkStateNotNull(this.currentTask)).cancel(false);
    }

    public void release() {
        release(null);
    }

    public void release(ReleaseCallback releaseCallback) {
        LoadTask loadTask = this.currentTask;
        if (loadTask != null) {
            loadTask.cancel(true);
        }
        if (releaseCallback != null) {
            this.downloadExecutorService.execute(new ReleaseTask(releaseCallback));
        }
        this.downloadExecutorService.shutdown();
    }

    @Override // com.google.android.exoplayer2.upstream.LoaderErrorThrower
    public void maybeThrowError() throws IOException {
        maybeThrowError(Integer.MIN_VALUE);
    }

    public void maybeThrowError(int i) throws IOException {
        IOException iOException = this.fatalError;
        if (iOException != null) {
            throw iOException;
        }
        LoadTask loadTask = this.currentTask;
        if (loadTask != null) {
            if (i == Integer.MIN_VALUE) {
                i = loadTask.defaultMinRetryCount;
            }
            loadTask.maybeThrowError(i);
        }
    }

    private final class LoadTask extends Handler implements Runnable {
        private Callback callback;
        private boolean canceled;
        private IOException currentError;
        public final int defaultMinRetryCount;
        private int errorCount;
        private Thread executorThread;
        private final Loadable loadable;
        private volatile boolean released;
        private final long startTimeMs;

        public LoadTask(Looper looper, Loadable loadable, Callback callback, int i, long j) {
            super(looper);
            this.loadable = loadable;
            this.callback = callback;
            this.defaultMinRetryCount = i;
            this.startTimeMs = j;
        }

        public void maybeThrowError(int i) throws IOException {
            IOException iOException = this.currentError;
            if (iOException != null && this.errorCount > i) {
                throw iOException;
            }
        }

        public void start(long j) {
            Assertions.checkState(Loader.this.currentTask == null);
            Loader.this.currentTask = this;
            if (j > 0) {
                sendEmptyMessageDelayed(0, j);
            } else {
                execute();
            }
        }

        public void cancel(boolean z) {
            this.released = z;
            this.currentError = null;
            if (hasMessages(0)) {
                this.canceled = true;
                removeMessages(0);
                if (!z) {
                    sendEmptyMessage(1);
                }
            } else {
                synchronized (this) {
                    try {
                        this.canceled = true;
                        this.loadable.cancelLoad();
                        Thread thread = this.executorThread;
                        if (thread != null) {
                            thread.interrupt();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            if (z) {
                finish();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                ((Callback) Assertions.checkNotNull(this.callback)).onLoadCanceled(this.loadable, jElapsedRealtime, jElapsedRealtime - this.startTimeMs, true);
                this.callback = null;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            try {
                synchronized (this) {
                    z = this.canceled;
                    this.executorThread = Thread.currentThread();
                }
                if (!z) {
                    TraceUtil.beginSection("load:" + this.loadable.getClass().getSimpleName());
                    try {
                        this.loadable.load();
                        TraceUtil.endSection();
                    } catch (Throwable th) {
                        TraceUtil.endSection();
                        throw th;
                    }
                }
                synchronized (this) {
                    this.executorThread = null;
                    Thread.interrupted();
                }
                if (this.released) {
                    return;
                }
                sendEmptyMessage(1);
            } catch (IOException e) {
                if (this.released) {
                    return;
                }
                obtainMessage(2, e).sendToTarget();
            } catch (Error e2) {
                if (!this.released) {
                    Log.m326e("LoadTask", "Unexpected error loading stream", e2);
                    obtainMessage(3, e2).sendToTarget();
                }
                throw e2;
            } catch (Exception e3) {
                if (this.released) {
                    return;
                }
                Log.m326e("LoadTask", "Unexpected exception loading stream", e3);
                obtainMessage(2, new UnexpectedLoaderException(e3)).sendToTarget();
            } catch (OutOfMemoryError e4) {
                if (this.released) {
                    return;
                }
                Log.m326e("LoadTask", "OutOfMemory error loading stream", e4);
                obtainMessage(2, new UnexpectedLoaderException(e4)).sendToTarget();
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            long retryDelayMillis;
            if (this.released) {
                return;
            }
            int i = message.what;
            if (i == 0) {
                execute();
                return;
            }
            if (i == 3) {
                throw ((Error) message.obj);
            }
            finish();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j = jElapsedRealtime - this.startTimeMs;
            Callback callback = (Callback) Assertions.checkNotNull(this.callback);
            if (this.canceled) {
                callback.onLoadCanceled(this.loadable, jElapsedRealtime, j, false);
                return;
            }
            int i2 = message.what;
            if (i2 == 1) {
                try {
                    callback.onLoadCompleted(this.loadable, jElapsedRealtime, j);
                    return;
                } catch (RuntimeException e) {
                    Log.m326e("LoadTask", "Unexpected exception handling load completed", e);
                    Loader.this.fatalError = new UnexpectedLoaderException(e);
                    return;
                }
            }
            if (i2 != 2) {
                return;
            }
            IOException iOException = (IOException) message.obj;
            this.currentError = iOException;
            int i3 = this.errorCount + 1;
            this.errorCount = i3;
            LoadErrorAction loadErrorActionOnLoadError = callback.onLoadError(this.loadable, jElapsedRealtime, j, iOException, i3);
            if (loadErrorActionOnLoadError.type == 3) {
                Loader.this.fatalError = this.currentError;
            } else if (loadErrorActionOnLoadError.type != 2) {
                if (loadErrorActionOnLoadError.type == 1) {
                    this.errorCount = 1;
                }
                if (loadErrorActionOnLoadError.retryDelayMillis != -9223372036854775807L) {
                    retryDelayMillis = loadErrorActionOnLoadError.retryDelayMillis;
                } else {
                    retryDelayMillis = getRetryDelayMillis();
                }
                start(retryDelayMillis);
            }
        }

        private void execute() {
            this.currentError = null;
            Loader.this.downloadExecutorService.execute((Runnable) Assertions.checkNotNull(Loader.this.currentTask));
        }

        private void finish() {
            Loader.this.currentTask = null;
        }

        private long getRetryDelayMillis() {
            return Math.min((this.errorCount - 1) * MediaDataController.MAX_STYLE_RUNS_COUNT, 5000);
        }
    }

    private static final class ReleaseTask implements Runnable {
        private final ReleaseCallback callback;

        public ReleaseTask(ReleaseCallback releaseCallback) {
            this.callback = releaseCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.callback.onLoaderReleased();
        }
    }
}
