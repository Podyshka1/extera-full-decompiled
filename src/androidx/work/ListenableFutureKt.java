package androidx.work;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u001aV\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062'\u0010\u0007\u001a#\b\u0001\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\b¢\u0006\u0002\b\fH\u0000¢\u0006\u0002\u0010\r\u001a.\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\u000f0\u0001\"\u0004\b\u0000\u0010\u000f*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u000f0\u0013H\u0000¨\u0006\u0014"}, d2 = {"launchFuture", "Lcom/google/common/util/concurrent/ListenableFuture;", "T", "context", "Lkotlin/coroutines/CoroutineContext;", "start", "Lkotlinx/coroutines/CoroutineStart;", "block", "Lkotlin/Function2;", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlin/coroutines/Continuation;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/ExtensionFunctionType;", "(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lcom/google/common/util/concurrent/ListenableFuture;", "executeAsync", "V", "Ljava/util/concurrent/Executor;", "debugTag", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/Function0;", "work-runtime_release"}, m910k = 2, mv = {2, 1, 0}, xi = 48)
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

    public static final <T> ListenableFuture<T> launchFuture(final CoroutineContext coroutineContext, final CoroutineStart coroutineStart, final Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2) {
        return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.work.ListenableFutureKt$$ExternalSyntheticLambda0
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return ListenableFutureKt.m2105$r8$lambda$GaXsP0J9ZiqTNKOjjWkBCoRah8(coroutineContext, coroutineStart, function2, completer);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$GaXsP0J9ZiqT-NKOjjWkBCoRah8, reason: not valid java name */
    public static Object m2105$r8$lambda$GaXsP0J9ZiqTNKOjjWkBCoRah8(CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2, CallbackToFutureAdapter.Completer completer) {
        final Job job = (Job) coroutineContext.get(Job.INSTANCE);
        completer.addCancellationListener(new Runnable() { // from class: androidx.work.ListenableFutureKt$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ListenableFutureKt.$r8$lambda$vr_XgQ5qIrw8Yb6kuj8zI4IjUEw(job);
            }
        }, DirectExecutor.INSTANCE);
        return BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(coroutineContext), null, coroutineStart, new ListenableFutureKt$launchFuture$1$2(function2, completer, null), 1, null);
    }

    public static void $r8$lambda$vr_XgQ5qIrw8Yb6kuj8zI4IjUEw(Job job) {
        if (job != null) {
            Job.cancel$default(job, null, 1, null);
        }
    }

    public static final <V> ListenableFuture<V> executeAsync(final Executor executor, final String str, final Function0<? extends V> function0) {
        return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.work.ListenableFutureKt$$ExternalSyntheticLambda2
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return ListenableFutureKt.$r8$lambda$X5HWWttRZ_Ir0xD9aqd6GXUt6fY(executor, str, function0, completer);
            }
        });
    }

    public static Object $r8$lambda$X5HWWttRZ_Ir0xD9aqd6GXUt6fY(Executor executor, String str, final Function0 function0, final CallbackToFutureAdapter.Completer completer) {
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
                ListenableFutureKt.$r8$lambda$2J7WTnmfyHeSyx3GGU57K1DCNjw(atomicBoolean, completer, function0);
            }
        });
        return str;
    }

    public static void $r8$lambda$2J7WTnmfyHeSyx3GGU57K1DCNjw(AtomicBoolean atomicBoolean, CallbackToFutureAdapter.Completer completer, Function0 function0) {
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
