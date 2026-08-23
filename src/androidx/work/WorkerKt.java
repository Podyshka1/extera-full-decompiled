package androidx.work;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class WorkerKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final ListenableFuture future(final Executor executor, final Function0 function0) {
        ListenableFuture future = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.work.WorkerKt$$ExternalSyntheticLambda0
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return WorkerKt.future$lambda$2(executor, function0, completer);
            }
        });
        Intrinsics.checkNotNullExpressionValue(future, "getFuture(...)");
        return future;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit future$lambda$2(Executor executor, final Function0 function0, final CallbackToFutureAdapter.Completer it) {
        Intrinsics.checkNotNullParameter(it, "it");
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        it.addCancellationListener(new Runnable() { // from class: androidx.work.WorkerKt$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                atomicBoolean.set(true);
            }
        }, DirectExecutor.INSTANCE);
        executor.execute(new Runnable() { // from class: androidx.work.WorkerKt$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                WorkerKt.future$lambda$2$lambda$1(atomicBoolean, it, function0);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void future$lambda$2$lambda$1(AtomicBoolean atomicBoolean, CallbackToFutureAdapter.Completer completer, Function0 function0) {
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
