package retrofit2;

import kotlin.KotlinNothingValueException;
import kotlin.KotlinNullPointerException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: loaded from: classes3.dex */
public abstract class KotlinExtensions {

    /* JADX INFO: renamed from: retrofit2.KotlinExtensions$suspendAndThrow$1 */
    /* JADX INFO: loaded from: classes7.dex */
    static final class C75651 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C75651(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return KotlinExtensions.suspendAndThrow(null, this);
        }
    }

    public static final Object awaitUnit(Call call, Continuation continuation) {
        Intrinsics.checkNotNull(call, "null cannot be cast to non-null type retrofit2.Call<kotlin.Unit?>");
        return awaitNullable(call, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object suspendAndThrow(final Throwable th, Continuation continuation) {
        final C75651 c75651;
        if (continuation instanceof C75651) {
            c75651 = (C75651) continuation;
            int i = c75651.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c75651.label = i - Integer.MIN_VALUE;
            } else {
                c75651 = new C75651(continuation);
            }
        }
        Object obj = c75651.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c75651.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            c75651.L$0 = th;
            c75651.label = 1;
            Dispatchers.getDefault().dispatch(c75651.getContext(), new Runnable() { // from class: retrofit2.KotlinExtensions$suspendAndThrow$2$1
                @Override // java.lang.Runnable
                public final void run() {
                    Continuation continuationIntercepted = IntrinsicsKt.intercepted(c75651);
                    Result.Companion companion = Result.Companion;
                    continuationIntercepted.resumeWith(Result.m3604constructorimpl(ResultKt.createFailure(th)));
                }
            });
            Object coroutine_suspended2 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (coroutine_suspended2 == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(c75651);
            }
            if (coroutine_suspended2 == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        throw new KotlinNothingValueException();
    }

    public static final Object await(final Call call, Continuation continuation) {
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        cancellableContinuationImpl.invokeOnCancellation(new Function1() { // from class: retrofit2.KotlinExtensions$await$2$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Throwable) obj);
                return Unit.INSTANCE;
            }

            public final void invoke(Throwable th) {
                call.cancel();
            }
        });
        call.enqueue(new Callback() { // from class: retrofit2.KotlinExtensions$await$2$2
            @Override // retrofit2.Callback
            public void onResponse(Call call2, Response response) {
                Intrinsics.checkNotNullParameter(call2, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccessful()) {
                    Object objBody = response.body();
                    if (objBody == null) {
                        Object objTag = call2.request().tag((Class<? extends Object>) Invocation.class);
                        Intrinsics.checkNotNull(objTag);
                        Invocation invocation = (Invocation) objTag;
                        KotlinNullPointerException kotlinNullPointerException = new KotlinNullPointerException("Response from " + invocation.service().getName() + '.' + invocation.method().getName() + " was null but response body type was declared as non-null");
                        CancellableContinuation cancellableContinuation = cancellableContinuationImpl;
                        Result.Companion companion = Result.Companion;
                        cancellableContinuation.resumeWith(Result.m3604constructorimpl(ResultKt.createFailure(kotlinNullPointerException)));
                        return;
                    }
                    cancellableContinuationImpl.resumeWith(Result.m3604constructorimpl(objBody));
                    return;
                }
                CancellableContinuation cancellableContinuation2 = cancellableContinuationImpl;
                Result.Companion companion2 = Result.Companion;
                cancellableContinuation2.resumeWith(Result.m3604constructorimpl(ResultKt.createFailure(new HttpException(response))));
            }

            @Override // retrofit2.Callback
            public void onFailure(Call call2, Throwable t) {
                Intrinsics.checkNotNullParameter(call2, "call");
                Intrinsics.checkNotNullParameter(t, "t");
                CancellableContinuation cancellableContinuation = cancellableContinuationImpl;
                Result.Companion companion = Result.Companion;
                cancellableContinuation.resumeWith(Result.m3604constructorimpl(ResultKt.createFailure(t)));
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    public static final Object awaitNullable(final Call call, Continuation continuation) {
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        cancellableContinuationImpl.invokeOnCancellation(new Function1() { // from class: retrofit2.KotlinExtensions$await$4$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Throwable) obj);
                return Unit.INSTANCE;
            }

            public final void invoke(Throwable th) {
                call.cancel();
            }
        });
        call.enqueue(new Callback() { // from class: retrofit2.KotlinExtensions$await$4$2
            @Override // retrofit2.Callback
            public void onResponse(Call call2, Response response) {
                Intrinsics.checkNotNullParameter(call2, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccessful()) {
                    CancellableContinuation cancellableContinuation = cancellableContinuationImpl;
                    Result.Companion companion = Result.Companion;
                    cancellableContinuation.resumeWith(Result.m3604constructorimpl(response.body()));
                } else {
                    CancellableContinuation cancellableContinuation2 = cancellableContinuationImpl;
                    Result.Companion companion2 = Result.Companion;
                    cancellableContinuation2.resumeWith(Result.m3604constructorimpl(ResultKt.createFailure(new HttpException(response))));
                }
            }

            @Override // retrofit2.Callback
            public void onFailure(Call call2, Throwable t) {
                Intrinsics.checkNotNullParameter(call2, "call");
                Intrinsics.checkNotNullParameter(t, "t");
                CancellableContinuation cancellableContinuation = cancellableContinuationImpl;
                Result.Companion companion = Result.Companion;
                cancellableContinuation.resumeWith(Result.m3604constructorimpl(ResultKt.createFailure(t)));
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    public static final Object awaitResponse(final Call call, Continuation continuation) {
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        cancellableContinuationImpl.invokeOnCancellation(new Function1() { // from class: retrofit2.KotlinExtensions$awaitResponse$2$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Throwable) obj);
                return Unit.INSTANCE;
            }

            public final void invoke(Throwable th) {
                call.cancel();
            }
        });
        call.enqueue(new Callback() { // from class: retrofit2.KotlinExtensions$awaitResponse$2$2
            @Override // retrofit2.Callback
            public void onResponse(Call call2, Response response) {
                Intrinsics.checkNotNullParameter(call2, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                cancellableContinuationImpl.resumeWith(Result.m3604constructorimpl(response));
            }

            @Override // retrofit2.Callback
            public void onFailure(Call call2, Throwable t) {
                Intrinsics.checkNotNullParameter(call2, "call");
                Intrinsics.checkNotNullParameter(t, "t");
                CancellableContinuation cancellableContinuation = cancellableContinuationImpl;
                Result.Companion companion = Result.Companion;
                cancellableContinuation.resumeWith(Result.m3604constructorimpl(ResultKt.createFailure(t)));
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }
}
