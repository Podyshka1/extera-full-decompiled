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
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.mvel2.util.Make$Map$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes3.dex */
abstract class ModernAsyncTask<Result> {
    private static Handler sHandler;
    private volatile Status mStatus = Status.PENDING;
    final AtomicBoolean mCancelled = new AtomicBoolean();
    final AtomicBoolean mTaskInvoked = new AtomicBoolean();
    private final FutureTask<Result> mFuture = new FutureTask<Result>(new Callable<Result>() { // from class: androidx.loader.content.ModernAsyncTask.1
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // java.util.concurrent.Callable
        public Result call() {
            ModernAsyncTask.this.mTaskInvoked.set(true);
            Result result = null;
            try {
                Process.setThreadPriority(10);
                result = (Result) ModernAsyncTask.this.doInBackground();
                Binder.flushPendingCommands();
                return result;
            } finally {
            }
        }
    }) { // from class: androidx.loader.content.ModernAsyncTask.2
        @Override // java.util.concurrent.FutureTask
        public void done() {
            try {
                ModernAsyncTask.this.postResultIfNotInvoked(get());
            } catch (InterruptedException e) {
                Log.w("AsyncTask", e);
            } catch (CancellationException unused) {
                ModernAsyncTask.this.postResultIfNotInvoked(null);
            } catch (ExecutionException e2) {
                Make$Map$$ExternalSyntheticBUOutline0.m973m("An error occurred while executing doInBackground()", e2.getCause());
            } catch (Throwable th) {
                Make$Map$$ExternalSyntheticBUOutline0.m973m("An error occurred while executing doInBackground()", th);
            }
        }
    };

    public enum Status {
        PENDING,
        RUNNING,
        FINISHED
    }

    public abstract Result doInBackground();

    public abstract void onCancelled(Result result);

    public abstract void onPostExecute(Result result);

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

    public void postResultIfNotInvoked(Result result) {
        if (this.mTaskInvoked.get()) {
            return;
        }
        postResult(result);
    }

    public void postResult(final Result result) {
        getHandler().post(new Runnable() { // from class: androidx.loader.content.ModernAsyncTask.3
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                ModernAsyncTask.this.finish(result);
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
    public static /* synthetic */ class C06394 {
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
            int i = C06394.$SwitchMap$androidx$loader$content$ModernAsyncTask$Status[this.mStatus.ordinal()];
            if (i == 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("Cannot execute task: the task is already running.");
                return;
            } else if (i == 2) {
                Segment$$ExternalSyntheticBUOutline1.m925m("Cannot execute task: the task has already been executed (a task can be executed only once)");
                return;
            } else {
                Segment$$ExternalSyntheticBUOutline1.m925m("We should never reach this state");
                return;
            }
        }
        this.mStatus = Status.RUNNING;
        executor.execute(this.mFuture);
    }

    public void finish(Result result) {
        if (isCancelled()) {
            onCancelled(result);
        } else {
            onPostExecute(result);
        }
        this.mStatus = Status.FINISHED;
    }
}
