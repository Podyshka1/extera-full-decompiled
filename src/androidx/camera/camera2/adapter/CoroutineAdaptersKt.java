package androidx.camera.camera2.adapter;

import androidx.arch.core.util.Function;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureChain;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.TimeoutKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0007\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u001a#\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003*\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0005\u0010\u0006\u001a/\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u00028\u00000\b2\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0005\u0010\t\u001a#\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u00028\u00000\b¢\u0006\u0004\b\n\u0010\u000b\u001a+\u0010\u000f\u001a\u00020\u000e\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u00028\u00000\b2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\f¢\u0006\u0004\b\u000f\u0010\u0010\u001aE\u0010\u000f\u001a\u00020\u000e\"\u0004\b\u0000\u0010\u0007\"\u0004\b\u0001\u0010\u0011*\b\u0012\u0004\u0012\u00028\u00000\b2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00010\f2\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0012¢\u0006\u0004\b\u000f\u0010\u0014\u001a5\u0010\u0017\u001a\u00020\u000e\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u00028\u00000\b2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\f2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\b\u0017\u0010\u0018\u001aO\u0010\u0017\u001a\u00020\u000e\"\u0004\b\u0000\u0010\u0007\"\u0004\b\u0001\u0010\u0011*\b\u0012\u0004\u0012\u00028\u00000\b2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00010\f2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0012¢\u0006\u0004\b\u0017\u0010\u0019\u001a%\u0010\u001b\u001a\u00020\u000e\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u00028\u00000\f2\u0006\u0010\u001a\u001a\u00020\u0015¢\u0006\u0004\b\u001b\u0010\u001c\u001a(\u0010 \u001a\u00020\u001f\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u00028\u00000\b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0086@¢\u0006\u0004\b \u0010!¨\u0006\""}, d2 = {"Lkotlinx/coroutines/Job;", _UrlKt.FRAGMENT_ENCODE_SET, "tag", "Lcom/google/common/util/concurrent/ListenableFuture;", "Ljava/lang/Void;", "asListenableFuture", "(Lkotlinx/coroutines/Job;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;", "T", "Lkotlinx/coroutines/Deferred;", "(Lkotlinx/coroutines/Deferred;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;", "asVoidListenableFuture", "(Lkotlinx/coroutines/Deferred;)Lcom/google/common/util/concurrent/ListenableFuture;", "Lkotlinx/coroutines/CompletableDeferred;", "destination", _UrlKt.FRAGMENT_ENCODE_SET, "propagateTo", "(Lkotlinx/coroutines/Deferred;Lkotlinx/coroutines/CompletableDeferred;)V", "R", "Lkotlin/Function1;", "transform", "(Lkotlinx/coroutines/Deferred;Lkotlinx/coroutines/CompletableDeferred;Lkotlin/jvm/functions/Function1;)V", _UrlKt.FRAGMENT_ENCODE_SET, "completionCause", "propagateCompletion", "(Lkotlinx/coroutines/Deferred;Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/Throwable;)V", "(Lkotlinx/coroutines/Deferred;Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function1;)V", "cause", "completeFailing", "(Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/Throwable;)V", _UrlKt.FRAGMENT_ENCODE_SET, "timeoutMillis", _UrlKt.FRAGMENT_ENCODE_SET, "awaitUntil", "(Lkotlinx/coroutines/Deferred;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "camera-camera2"}, m910k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCoroutineAdapters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineAdapters.kt\nandroidx/camera/camera2/adapter/CoroutineAdaptersKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,200:1\n1#2:201\n*E\n"})
public abstract class CoroutineAdaptersKt {

    /* JADX INFO: renamed from: androidx.camera.camera2.adapter.CoroutineAdaptersKt$awaitUntil$1 */
    @Metadata(m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.camera.camera2.adapter.CoroutineAdaptersKt", m921f = "CoroutineAdapters.kt", m922i = {}, m923l = {199}, m924m = "awaitUntil", m925n = {}, m926s = {}, m927v = 1)
    public static final class C01131<T> extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        public C01131(Continuation<? super C01131> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CoroutineAdaptersKt.awaitUntil(null, 0L, this);
        }
    }

    public static /* synthetic */ ListenableFuture asListenableFuture$default(Job job, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = "Job.asListenableFuture";
        }
        return asListenableFuture(job, obj);
    }

    public static final ListenableFuture<Void> asListenableFuture(final Job job, final Object obj) {
        return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.camera2.adapter.CoroutineAdaptersKt$$ExternalSyntheticLambda0
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return CoroutineAdaptersKt.$r8$lambda$291ob6vuDNDeI74nkG615Jp79gg(job, obj, completer);
            }
        });
    }

    public static Object $r8$lambda$291ob6vuDNDeI74nkG615Jp79gg(Job job, Object obj, final CallbackToFutureAdapter.Completer completer) {
        job.invokeOnCompletion(new Function1() { // from class: androidx.camera.camera2.adapter.CoroutineAdaptersKt$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                return CoroutineAdaptersKt.asListenableFuture$lambda$0$0(completer, (Throwable) obj2);
            }
        });
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit asListenableFuture$lambda$0$0(CallbackToFutureAdapter.Completer completer, Throwable th) {
        if (th != null) {
            if (th instanceof CancellationException) {
                completer.setCancelled();
            } else {
                completer.setException(th);
            }
        } else {
            completer.set(null);
        }
        return Unit.INSTANCE;
    }

    public static /* synthetic */ ListenableFuture asListenableFuture$default(Deferred deferred, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = "Deferred.asListenableFuture";
        }
        return asListenableFuture(deferred, obj);
    }

    public static final <T> ListenableFuture<T> asListenableFuture(final Deferred<? extends T> deferred, final Object obj) {
        return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.camera2.adapter.CoroutineAdaptersKt$$ExternalSyntheticLambda3
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return CoroutineAdaptersKt.$r8$lambda$CWMmOpF3SrnUZxqkZ9tNskVvWfc(deferred, obj, completer);
            }
        });
    }

    public static Object $r8$lambda$CWMmOpF3SrnUZxqkZ9tNskVvWfc(final Deferred deferred, Object obj, final CallbackToFutureAdapter.Completer completer) {
        deferred.invokeOnCompletion(new Function1() { // from class: androidx.camera.camera2.adapter.CoroutineAdaptersKt$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                return CoroutineAdaptersKt.asListenableFuture$lambda$1$0(completer, deferred, (Throwable) obj2);
            }
        });
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit asListenableFuture$lambda$1$0(CallbackToFutureAdapter.Completer completer, Deferred deferred, Throwable th) {
        if (th != null) {
            if (th instanceof CancellationException) {
                completer.setCancelled();
            } else {
                completer.setException(th);
            }
        } else {
            completer.set(deferred.getCompleted());
        }
        return Unit.INSTANCE;
    }

    public static final <T> ListenableFuture<Void> asVoidListenableFuture(Deferred<? extends T> deferred) {
        return FutureChain.from(asListenableFuture$default((Deferred) deferred, (Object) null, 1, (Object) null)).transform(new Function() { // from class: androidx.camera.camera2.adapter.CoroutineAdaptersKt$$ExternalSyntheticLambda1
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                return CoroutineAdaptersKt.m1140$r8$lambda$MYmxNEn3jLkJk17hLnjOKOPvkU(obj);
            }
        }, CameraXExecutors.directExecutor());
    }

    /* JADX INFO: renamed from: $r8$lambda$MYmxNEn3jLkJk17hLnjOKOP-vkU, reason: not valid java name */
    public static Void m1140$r8$lambda$MYmxNEn3jLkJk17hLnjOKOPvkU(Object obj) {
        return null;
    }

    public static Unit $r8$lambda$NqijppL2DSYQX2kgqByrGzDCers(Deferred deferred, CompletableDeferred completableDeferred, Throwable th) {
        propagateCompletion(deferred, completableDeferred, th);
        return Unit.INSTANCE;
    }

    public static final <T> void propagateTo(final Deferred<? extends T> deferred, final CompletableDeferred<T> completableDeferred) {
        deferred.invokeOnCompletion(new Function1() { // from class: androidx.camera.camera2.adapter.CoroutineAdaptersKt$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CoroutineAdaptersKt.$r8$lambda$NqijppL2DSYQX2kgqByrGzDCers(deferred, completableDeferred, (Throwable) obj);
            }
        });
    }

    public static Unit $r8$lambda$V0luSTHRidOVmS9hfgdjliJRNUE(Deferred deferred, CompletableDeferred completableDeferred, Function1 function1, Throwable th) {
        propagateCompletion(deferred, completableDeferred, th, function1);
        return Unit.INSTANCE;
    }

    public static final <T, R> void propagateTo(final Deferred<? extends T> deferred, final CompletableDeferred<R> completableDeferred, final Function1<? super T, ? extends R> function1) {
        deferred.invokeOnCompletion(new Function1() { // from class: androidx.camera.camera2.adapter.CoroutineAdaptersKt$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CoroutineAdaptersKt.$r8$lambda$V0luSTHRidOVmS9hfgdjliJRNUE(deferred, completableDeferred, function1, (Throwable) obj);
            }
        });
    }

    public static final <T> void propagateCompletion(Deferred<? extends T> deferred, CompletableDeferred<T> completableDeferred, Throwable th) {
        if (th != null) {
            completeFailing(completableDeferred, th);
        } else {
            completableDeferred.complete(deferred.getCompleted());
        }
    }

    public static final <T, R> void propagateCompletion(Deferred<? extends T> deferred, CompletableDeferred<R> completableDeferred, Throwable th, Function1<? super T, ? extends R> function1) {
        if (th != null) {
            completeFailing(completableDeferred, th);
        } else {
            completableDeferred.complete(function1.invoke(deferred.getCompleted()));
        }
    }

    public static final <T> void completeFailing(CompletableDeferred<T> completableDeferred, Throwable th) {
        if (th instanceof CancellationException) {
            completableDeferred.cancel((CancellationException) th);
        } else {
            completableDeferred.completeExceptionally(th);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.camera.camera2.adapter.CoroutineAdaptersKt$awaitUntil$2 */
    @Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "T", "Lkotlinx/coroutines/CoroutineScope;"}, m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.camera.camera2.adapter.CoroutineAdaptersKt$awaitUntil$2", m921f = "CoroutineAdapters.kt", m922i = {}, m923l = {199}, m924m = "invokeSuspend", m925n = {}, m926s = {}, m927v = 1)
    public static final class C01142<T> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super T>, Object> {
        final /* synthetic */ Deferred<T> $this_awaitUntil;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C01142(Deferred<? extends T> deferred, Continuation<? super C01142> continuation) {
            super(2, continuation);
            this.$this_awaitUntil = deferred;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C01142(this.$this_awaitUntil, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super T> continuation) {
            return ((C01142) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            Deferred<T> deferred = this.$this_awaitUntil;
            this.label = 1;
            Object objAwait = deferred.await(this);
            return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object awaitUntil(Deferred<? extends T> deferred, long j, Continuation<? super Boolean> continuation) {
        C01131 c01131;
        if (continuation instanceof C01131) {
            c01131 = (C01131) continuation;
            int i = c01131.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c01131.label = i - Integer.MIN_VALUE;
            } else {
                c01131 = new C01131(continuation);
            }
        }
        Object objWithTimeoutOrNull = c01131.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c01131.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objWithTimeoutOrNull);
            C01142 c01142 = new C01142(deferred, null);
            c01131.label = 1;
            objWithTimeoutOrNull = TimeoutKt.withTimeoutOrNull(j, c01142, c01131);
            if (objWithTimeoutOrNull == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(objWithTimeoutOrNull);
        }
        return Boxing.boxBoolean(objWithTimeoutOrNull != null);
    }
}
