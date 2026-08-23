package androidx.camera.camera2.pipe.core;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes3.dex */
final /* synthetic */ class MutexesKt$lockAndSuspend$lockFn$1 extends FunctionReferenceImpl implements Function2 {
    public static final MutexesKt$lockAndSuspend$lockFn$1 INSTANCE = new MutexesKt$lockAndSuspend$lockFn$1();

    MutexesKt$lockAndSuspend$lockFn$1() {
        super(2, MutexesKt.class, "lockWithoutOwner", "lockWithoutOwner(Lkotlinx/coroutines/sync/Mutex;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 1);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Mutex mutex, Continuation continuation) {
        return MutexesKt.lockWithoutOwner(mutex, continuation);
    }
}
