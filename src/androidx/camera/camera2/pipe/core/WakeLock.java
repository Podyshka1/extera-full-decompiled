package androidx.camera.camera2.pipe.core;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes3.dex */
public final class WakeLock {
    private final Function0 callback;
    private boolean closed;
    private int count;
    private final Object lock;
    private final CoroutineScope scope;
    private final boolean startTimeoutOnCreation;
    private final long timeout;
    private Job timeoutJob;

    public WakeLock(CoroutineScope scope, long j, boolean z, Function0 callback) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.scope = scope;
        this.timeout = j;
        this.startTimeoutOnCreation = z;
        this.callback = callback;
        Object obj = new Object();
        this.lock = obj;
        if (z) {
            synchronized (obj) {
                startTimeout();
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    private final class WakeLockToken implements Token {
        private final AtomicBoolean _released = AtomicFU.atomic(false);

        public WakeLockToken() {
        }

        @Override // androidx.camera.camera2.pipe.core.Token
        public boolean getReleased() {
            return this._released.getValue();
        }

        @Override // androidx.camera.camera2.pipe.core.Token
        public boolean release() {
            if (!this._released.compareAndSet(false, true)) {
                return false;
            }
            WakeLock.this.releaseToken$camera_camera2_pipe();
            return true;
        }
    }

    public final Token acquire() {
        synchronized (this.lock) {
            try {
                if (this.closed) {
                    return null;
                }
                int i = this.count + 1;
                this.count = i;
                if (i == 1) {
                    Job job = this.timeoutJob;
                    if (job != null) {
                        Job.DefaultImpls.cancel$default(job, null, 1, null);
                    }
                    this.timeoutJob = null;
                }
                Unit unit = Unit.INSTANCE;
                return new WakeLockToken();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean release() {
        synchronized (this.lock) {
            try {
                if (this.closed) {
                    return false;
                }
                this.closed = true;
                Job job = this.timeoutJob;
                if (job != null) {
                    Job.DefaultImpls.cancel$default(job, null, 1, null);
                }
                this.timeoutJob = null;
                Unit unit = Unit.INSTANCE;
                BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new C02372(null), 3, null);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.core.WakeLock$release$2 */
    static final class C02372 extends SuspendLambda implements Function2 {
        int label;

        C02372(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return WakeLock.this.new C02372(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C02372) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                WakeLock.this.callback.invoke();
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final void releaseToken$camera_camera2_pipe() {
        synchronized (this.lock) {
            try {
                int i = this.count - 1;
                this.count = i;
                if (i == 0 && !this.closed) {
                    startTimeout();
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.core.WakeLock$startTimeout$1 */
    static final class C02381 extends SuspendLambda implements Function2 {
        int label;

        C02381(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return WakeLock.this.new C02381(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C02381) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                long j = WakeLock.this.timeout;
                this.label = 1;
                if (DelayKt.delay(j, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            Object obj2 = WakeLock.this.lock;
            WakeLock wakeLock = WakeLock.this;
            synchronized (obj2) {
                if (!wakeLock.closed && wakeLock.count == 0) {
                    wakeLock.timeoutJob = null;
                    wakeLock.closed = true;
                    Unit unit = Unit.INSTANCE;
                    WakeLock.this.callback.invoke();
                    return Unit.INSTANCE;
                }
                return Unit.INSTANCE;
            }
        }
    }

    private final void startTimeout() {
        this.timeoutJob = BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new C02381(null), 3, null);
    }
}
