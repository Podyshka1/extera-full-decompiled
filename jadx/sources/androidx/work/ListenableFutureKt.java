package androidx.work;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ListenableFutureKt {
    public static /* synthetic */ ListenableFuture launchFuture$default(CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        if ((i & 2) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        return launchFuture(coroutineContext, coroutineStart, function2);
    }

    public static final ListenableFuture launchFuture(final CoroutineContext context, final CoroutineStart start, final Function2 block) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(block, "block");
        ListenableFuture future = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.work.ListenableFutureKt$$ExternalSyntheticLambda0
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return ListenableFutureKt.launchFuture$lambda$1(context, start, block, completer);
            }
        });
        Intrinsics.checkNotNullExpressionValue(future, "getFuture(...)");
        return future;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object launchFuture$lambda$1(CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2, CallbackToFutureAdapter.Completer completer) {
        Intrinsics.checkNotNullParameter(completer, "completer");
        final Job job = (Job) coroutineContext.get(Job.Key);
        completer.addCancellationListener(new Runnable() { // from class: androidx.work.ListenableFutureKt$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ListenableFutureKt.launchFuture$lambda$1$lambda$0(job);
            }
        }, DirectExecutor.INSTANCE);
        return BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(coroutineContext), null, coroutineStart, new ListenableFutureKt$launchFuture$1$2(function2, completer, null), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void launchFuture$lambda$1$lambda$0(Job job) {
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, null, 1, null);
        }
    }

    public static final ListenableFuture executeAsync(final Executor executor, final String debugTag, final Function0 block) {
        Intrinsics.checkNotNullParameter(executor, "<this>");
        Intrinsics.checkNotNullParameter(debugTag, "debugTag");
        Intrinsics.checkNotNullParameter(block, "block");
        ListenableFuture future = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.work.ListenableFutureKt$$ExternalSyntheticLambda2
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return ListenableFutureKt.executeAsync$lambda$4(executor, debugTag, block, completer);
            }
        });
        Intrinsics.checkNotNullExpressionValue(future, "getFuture(...)");
        return future;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object executeAsync$lambda$4(Executor executor, String str, final Function0 function0, final CallbackToFutureAdapter.Completer completer) {
        Intrinsics.checkNotNullParameter(completer, "completer");
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        completer.addCancellationListener(new Runnable() { // from class: androidx.work.ListenableFutureKt$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                atomicBoolean.set(true);
            }
        }, DirectExecutor.INSTANCE);
        executor.execute(new Runnable() { // from class: androidx.work.ListenableFutureKt$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                ListenableFutureKt.executeAsync$lambda$4$lambda$3(atomicBoolean, completer, function0);
            }
        });
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void executeAsync$lambda$4$lambda$3(AtomicBoolean atomicBoolean, CallbackToFutureAdapter.Completer completer, Function0 function0) {
        if (atomicBoolean.get()) {
            return;
        }
        try {
            completer.set(function0.invoke());
        } catch (Throwable th) {
            completer.setException(th);
        }
    }
}
