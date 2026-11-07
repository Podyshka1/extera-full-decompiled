package androidx.camera.camera2.pipe.core;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(m862k = 3, mv = {2, 1, 0}, xi = 48)
public final /* synthetic */ class MutexesKt$lockAndSuspend$lockFn$1 extends FunctionReferenceImpl implements Function2<Mutex, Continuation<? super Unit>, Object>, SuspendFunction {
    public static final MutexesKt$lockAndSuspend$lockFn$1 INSTANCE = new MutexesKt$lockAndSuspend$lockFn$1();

    public MutexesKt$lockAndSuspend$lockFn$1() {
        super(2, MutexesKt.class, "lockWithoutOwner", "lockWithoutOwner(Lkotlinx/coroutines/sync/Mutex;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 1);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Mutex mutex, Continuation<? super Unit> continuation) {
        return MutexesKt.lockWithoutOwner(mutex, continuation);
    }
}
