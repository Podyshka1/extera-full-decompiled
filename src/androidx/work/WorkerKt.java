package androidx.work;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a&\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005H\u0002¨\u0006\u0006"}, d2 = {"future", "Lcom/google/common/util/concurrent/ListenableFuture;", "T", "Ljava/util/concurrent/Executor;", "block", "Lkotlin/Function0;", "work-runtime_release"}, m754k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class WorkerKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> ListenableFuture<T> future(final Executor executor, final Function0<? extends T> function0) {
        return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.work.WorkerKt$$ExternalSyntheticLambda0
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return WorkerKt.m1775$r8$lambda$stbDiVrUcYsUSVFbJy_5j0wuK4(executor, function0, completer);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$stbDiVrUcYsUSVFbJy_5-j0wuK4, reason: not valid java name */
    public static Unit m1775$r8$lambda$stbDiVrUcYsUSVFbJy_5j0wuK4(Executor executor, final Function0 function0, final CallbackToFutureAdapter.Completer completer) {
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        completer.addCancellationListener(new Runnable() { // from class: androidx.work.WorkerKt$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                atomicBoolean.set(true);
            }
        }, DirectExecutor.INSTANCE);
        executor.execute(new Runnable() { // from class: androidx.work.WorkerKt$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                WorkerKt.$r8$lambda$06LNzu7McnKR6G06fSbfQ2BCegc(atomicBoolean, completer, function0);
            }
        });
        return Unit.INSTANCE;
    }

    public static void $r8$lambda$06LNzu7McnKR6G06fSbfQ2BCegc(AtomicBoolean atomicBoolean, CallbackToFutureAdapter.Completer completer, Function0 function0) {
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
