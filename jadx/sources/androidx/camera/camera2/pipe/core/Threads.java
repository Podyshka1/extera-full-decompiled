package androidx.camera.camera2.pipe.core;

import android.os.Handler;
import java.util.concurrent.Executor;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.TimeoutKt;

/* JADX INFO: loaded from: classes3.dex */
public final class Threads {
    private final Lazy _camera2Executor;
    private final Lazy _camera2Handler;
    private final CoroutineDispatcher backgroundDispatcher;
    private final Executor backgroundExecutor;
    private final CoroutineDispatcher blockingDispatcher;
    private final Executor blockingExecutor;
    private final CoroutineScope cameraPipeDispatchScope;
    private final CoroutineScope cameraPipeScope;
    private final CoroutineDispatcher lightweightDispatcher;
    private final Executor lightweightExecutor;

    public Threads(CoroutineScope cameraPipeScope, CoroutineScope cameraPipeDispatchScope, Executor blockingExecutor, CoroutineDispatcher blockingDispatcher, Executor backgroundExecutor, CoroutineDispatcher backgroundDispatcher, Executor lightweightExecutor, CoroutineDispatcher lightweightDispatcher, final Function0 camera2Handler, final Function0 camera2Executor) {
        Intrinsics.checkNotNullParameter(cameraPipeScope, "cameraPipeScope");
        Intrinsics.checkNotNullParameter(cameraPipeDispatchScope, "cameraPipeDispatchScope");
        Intrinsics.checkNotNullParameter(blockingExecutor, "blockingExecutor");
        Intrinsics.checkNotNullParameter(blockingDispatcher, "blockingDispatcher");
        Intrinsics.checkNotNullParameter(backgroundExecutor, "backgroundExecutor");
        Intrinsics.checkNotNullParameter(backgroundDispatcher, "backgroundDispatcher");
        Intrinsics.checkNotNullParameter(lightweightExecutor, "lightweightExecutor");
        Intrinsics.checkNotNullParameter(lightweightDispatcher, "lightweightDispatcher");
        Intrinsics.checkNotNullParameter(camera2Handler, "camera2Handler");
        Intrinsics.checkNotNullParameter(camera2Executor, "camera2Executor");
        this.cameraPipeScope = cameraPipeScope;
        this.cameraPipeDispatchScope = cameraPipeDispatchScope;
        this.blockingExecutor = blockingExecutor;
        this.blockingDispatcher = blockingDispatcher;
        this.backgroundExecutor = backgroundExecutor;
        this.backgroundDispatcher = backgroundDispatcher;
        this.lightweightExecutor = lightweightExecutor;
        this.lightweightDispatcher = lightweightDispatcher;
        this._camera2Handler = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.pipe.core.Threads$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Threads._camera2Handler$lambda$0(camera2Handler);
            }
        });
        this._camera2Executor = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.pipe.core.Threads$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Threads._camera2Executor$lambda$0(camera2Executor);
            }
        });
    }

    public final CoroutineScope getCameraPipeScope() {
        return this.cameraPipeScope;
    }

    public final CoroutineDispatcher getBlockingDispatcher() {
        return this.blockingDispatcher;
    }

    public final CoroutineDispatcher getBackgroundDispatcher() {
        return this.backgroundDispatcher;
    }

    public final Executor getLightweightExecutor() {
        return this.lightweightExecutor;
    }

    public final CoroutineDispatcher getLightweightDispatcher() {
        return this.lightweightDispatcher;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Handler _camera2Handler$lambda$0(Function0 function0) {
        return (Handler) function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Executor _camera2Executor$lambda$0(Function0 function0) {
        return (Executor) function0.invoke();
    }

    public final Handler getCamera2Handler() {
        return (Handler) this._camera2Handler.getValue();
    }

    public final Executor getCamera2Executor() {
        return (Executor) this._camera2Executor.getValue();
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.core.Threads$runBlockingCheckedOrNull$1 */
    static final class C02361 extends SuspendLambda implements Function2 {
        final /* synthetic */ Function1 $block;
        final /* synthetic */ long $timeoutMs;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02361(Function1 function1, long j, Continuation continuation) {
            super(2, continuation);
            this.$block = function1;
            this.$timeoutMs = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return Threads.this.new C02361(this.$block, this.$timeoutMs, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C02361) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            Threads threads = Threads.this;
            Deferred deferredRunAsyncSupervised = threads.runAsyncSupervised(threads.getBackgroundDispatcher(), this.$block);
            long j = this.$timeoutMs;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(deferredRunAsyncSupervised, null);
            this.label = 1;
            Object objWithTimeoutOrNull = TimeoutKt.withTimeoutOrNull(j, anonymousClass1, this);
            return objWithTimeoutOrNull == coroutine_suspended ? coroutine_suspended : objWithTimeoutOrNull;
        }

        /* JADX INFO: renamed from: androidx.camera.camera2.pipe.core.Threads$runBlockingCheckedOrNull$1$1, reason: invalid class name */
        static final class AnonymousClass1 extends SuspendLambda implements Function2 {
            final /* synthetic */ Deferred $result;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(Deferred deferred, Continuation continuation) {
                super(2, continuation);
                this.$result = deferred;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass1(this.$result, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i != 0) {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                ResultKt.throwOnFailure(obj);
                Deferred deferred = this.$result;
                this.label = 1;
                Object objAwait = deferred.await(this);
                return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
            }
        }
    }

    public final Object runBlockingCheckedOrNull(long j, Function1 block) {
        Intrinsics.checkNotNullParameter(block, "block");
        try {
            return BuildersKt.runBlocking(this.blockingDispatcher, new C02361(block, j, null));
        } catch (InterruptedException e) {
            if (!Log.INSTANCE.getINFO_LOGGABLE()) {
                return null;
            }
            android.util.Log.i("CXCP", "runBlockingCheckedOrNull cancelled by thread interruption", e);
            return null;
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.core.Threads$runAsyncSupervised$1 */
    static final class C02351 extends SuspendLambda implements Function2 {
        final /* synthetic */ Function1 $block;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02351(Function1 function1, Continuation continuation) {
            super(2, continuation);
            this.$block = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new C02351(this.$block, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C02351) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            Function1 function1 = this.$block;
            this.label = 1;
            Object objInvoke = function1.invoke(this);
            return objInvoke == coroutine_suspended ? coroutine_suspended : objInvoke;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Deferred runAsyncSupervised(CoroutineDispatcher coroutineDispatcher, Function1 function1) {
        return BuildersKt__Builders_commonKt.async$default(this.cameraPipeDispatchScope, coroutineDispatcher, null, new C02351(function1, null), 2, null);
    }
}
