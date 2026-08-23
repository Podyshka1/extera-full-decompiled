package androidx.datastore.core;

import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class SingleProcessCoordinator implements InterProcessCoordinator {
    private final String filePath;
    private final Mutex mutex;
    private final Flow updateNotifications;
    private final AtomicInt version;

    /* JADX INFO: renamed from: androidx.datastore.core.SingleProcessCoordinator$lock$1 */
    static final class C05311 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C05311(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SingleProcessCoordinator.this.lock(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.SingleProcessCoordinator$tryLock$1 */
    /* JADX INFO: loaded from: classes4.dex */
    static final class C05321 extends ContinuationImpl {
        Object L$0;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        C05321(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SingleProcessCoordinator.this.tryLock(null, this);
        }
    }

    public SingleProcessCoordinator(String filePath) {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        this.filePath = filePath;
        this.mutex = MutexKt.Mutex$default(false, 1, null);
        this.version = new AtomicInt(0);
        this.updateNotifications = FlowKt.flow(new SingleProcessCoordinator$updateNotifications$1(null));
    }

    @Override // androidx.datastore.core.InterProcessCoordinator
    public Flow getUpdateNotifications() {
        return this.updateNotifications;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // androidx.datastore.core.InterProcessCoordinator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object lock(Function1 function1, Continuation continuation) throws Throwable {
        C05311 c05311;
        Mutex mutex;
        Throwable th;
        Mutex mutex2;
        if (continuation instanceof C05311) {
            c05311 = (C05311) continuation;
            int i = c05311.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c05311.label = i - Integer.MIN_VALUE;
            } else {
                c05311 = new C05311(continuation);
            }
        }
        Object obj = c05311.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c05311.label;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                mutex = this.mutex;
                c05311.L$0 = function1;
                c05311.L$1 = mutex;
                c05311.label = 1;
                if (mutex.lock(null, c05311) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex2 = (Mutex) c05311.L$0;
                try {
                    ResultKt.throwOnFailure(obj);
                    mutex2.unlock(null);
                    return obj;
                } catch (Throwable th2) {
                    th = th2;
                    mutex2.unlock(null);
                    throw th;
                }
            }
            Mutex mutex3 = (Mutex) c05311.L$1;
            Function1 function12 = (Function1) c05311.L$0;
            ResultKt.throwOnFailure(obj);
            mutex = mutex3;
            function1 = function12;
            c05311.L$0 = mutex;
            c05311.L$1 = null;
            c05311.label = 2;
            Object objInvoke = function1.invoke(c05311);
            if (objInvoke != coroutine_suspended) {
                Mutex mutex4 = mutex;
                obj = objInvoke;
                mutex2 = mutex4;
                mutex2.unlock(null);
                return obj;
            }
            return coroutine_suspended;
        } catch (Throwable th3) {
            Mutex mutex5 = mutex;
            th = th3;
            mutex2 = mutex5;
            mutex2.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // androidx.datastore.core.InterProcessCoordinator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object tryLock(Function2 function2, Continuation continuation) throws Throwable {
        C05321 c05321;
        Mutex mutex;
        Throwable th;
        boolean z;
        if (continuation instanceof C05321) {
            c05321 = (C05321) continuation;
            int i = c05321.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c05321.label = i - Integer.MIN_VALUE;
            } else {
                c05321 = new C05321(continuation);
            }
        }
        Object obj = c05321.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c05321.label;
        if (i2 != 0) {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            z = c05321.Z$0;
            mutex = (Mutex) c05321.L$0;
            try {
                ResultKt.throwOnFailure(obj);
                if (z) {
                    mutex.unlock(null);
                }
                return obj;
            } catch (Throwable th2) {
                th = th2;
                if (z) {
                    mutex.unlock(null);
                }
                throw th;
            }
        }
        ResultKt.throwOnFailure(obj);
        Mutex mutex2 = this.mutex;
        boolean zTryLock = mutex2.tryLock(null);
        try {
            Boolean boolBoxBoolean = Boxing.boxBoolean(zTryLock);
            c05321.L$0 = mutex2;
            c05321.Z$0 = zTryLock;
            c05321.label = 1;
            Object objInvoke = function2.invoke(boolBoxBoolean, c05321);
            if (objInvoke == coroutine_suspended) {
                return coroutine_suspended;
            }
            mutex = mutex2;
            obj = objInvoke;
            z = zTryLock;
            if (z) {
            }
            return obj;
        } catch (Throwable th3) {
            mutex = mutex2;
            th = th3;
            z = zTryLock;
            if (z) {
            }
            throw th;
        }
    }

    @Override // androidx.datastore.core.InterProcessCoordinator
    public Object getVersion(Continuation continuation) {
        return Boxing.boxInt(this.version.get());
    }

    @Override // androidx.datastore.core.InterProcessCoordinator
    public Object incrementAndGetVersion(Continuation continuation) {
        return Boxing.boxInt(this.version.incrementAndGet());
    }
}
