package androidx.loader.content;

import android.os.Binder;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
abstract class ModernAsyncTask {
    private static Handler sHandler;
    private volatile Status mStatus = Status.PENDING;
    final AtomicBoolean mCancelled = new AtomicBoolean();
    final AtomicBoolean mTaskInvoked = new AtomicBoolean();
    private final FutureTask mFuture = new FutureTask(new Callable() { // from class: androidx.loader.content.ModernAsyncTask.1
        @Override // java.util.concurrent.Callable
        public Object call() {
            ModernAsyncTask.this.mTaskInvoked.set(true);
            Object objDoInBackground = null;
            try {
                Process.setThreadPriority(10);
                objDoInBackground = ModernAsyncTask.this.doInBackground();
                Binder.flushPendingCommands();
                return objDoInBackground;
            } finally {
            }
        }
    }) { // from class: androidx.loader.content.ModernAsyncTask.2
        @Override // java.util.concurrent.FutureTask
        protected void done() {
            try {
                ModernAsyncTask.this.postResultIfNotInvoked(get());
            } catch (InterruptedException e) {
                Log.w("AsyncTask", e);
            } catch (CancellationException unused) {
                ModernAsyncTask.this.postResultIfNotInvoked(null);
            } catch (ExecutionException e2) {
                throw new RuntimeException("An error occurred while executing doInBackground()", e2.getCause());
            } catch (Throwable th) {
                throw new RuntimeException("An error occurred while executing doInBackground()", th);
            }
        }
    };

    public enum Status {
        PENDING,
        RUNNING,
        FINISHED
    }

    protected abstract Object doInBackground();

    protected abstract void onCancelled(Object obj);

    protected abstract void onPostExecute(Object obj);

    private static Handler getHandler() {
        Handler handler;
        synchronized (ModernAsyncTask.class) {
            try {
                if (sHandler == null) {
                    sHandler = new Handler(Looper.getMainLooper());
                }
                handler = sHandler;
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }

    ModernAsyncTask() {
    }

    void postResultIfNotInvoked(Object obj) {
        if (this.mTaskInvoked.get()) {
            return;
        }
        postResult(obj);
    }

    void postResult(final Object obj) {
        getHandler().post(new Runnable() { // from class: androidx.loader.content.ModernAsyncTask.3
            @Override // java.lang.Runnable
            public void run() {
                ModernAsyncTask.this.finish(obj);
            }
        });
    }

    public final boolean isCancelled() {
        return this.mCancelled.get();
    }

    public final boolean cancel(boolean z) {
        this.mCancelled.set(true);
        return this.mFuture.cancel(z);
    }

    /* JADX INFO: renamed from: androidx.loader.content.ModernAsyncTask$4 */
    static /* synthetic */ class C06514 {
        static final /* synthetic */ int[] $SwitchMap$androidx$loader$content$ModernAsyncTask$Status;

        static {
            int[] iArr = new int[Status.values().length];
            $SwitchMap$androidx$loader$content$ModernAsyncTask$Status = iArr;
            try {
                iArr[Status.RUNNING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$loader$content$ModernAsyncTask$Status[Status.FINISHED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public final void executeOnExecutor(Executor executor) {
        if (this.mStatus != Status.PENDING) {
            int i = C06514.$SwitchMap$androidx$loader$content$ModernAsyncTask$Status[this.mStatus.ordinal()];
            if (i == 1) {
                throw new IllegalStateException("Cannot execute task: the task is already running.");
            }
            if (i == 2) {
                throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
            throw new IllegalStateException("We should never reach this state");
        }
        this.mStatus = Status.RUNNING;
        executor.execute(this.mFuture);
    }

    void finish(Object obj) {
        if (isCancelled()) {
            onCancelled(obj);
        } else {
            onPostExecute(obj);
        }
        this.mStatus = Status.FINISHED;
    }
}
