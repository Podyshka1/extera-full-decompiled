package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b \u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\b\u001a\u00020\u0005H\u0086@¢\u0006\u0002\u0010\tJ\u000e\u0010\n\u001a\u00020\u0005H¤@¢\u0006\u0002\u0010\tJ\u000e\u0010\u000b\u001a\u00020\u0005H\u0086@¢\u0006\u0002\u0010\tR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Landroidx/datastore/core/RunOnce;", _UrlKt.FRAGMENT_ENCODE_SET, "()V", "didRun", "Lkotlinx/coroutines/CompletableDeferred;", _UrlKt.FRAGMENT_ENCODE_SET, "runMutex", "Lkotlinx/coroutines/sync/Mutex;", "awaitComplete", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "doRun", "runIfNeeded", "datastore-core_release"}, m754k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDataStoreImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataStoreImpl.kt\nandroidx/datastore/core/RunOnce\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,538:1\n120#2,10:539\n*S KotlinDebug\n*F\n+ 1 DataStoreImpl.kt\nandroidx/datastore/core/RunOnce\n*L\n495#1:539,10\n*E\n"})
public abstract class RunOnce {
    private final Mutex runMutex = MutexKt.Mutex$default(false, 1, null);
    private final CompletableDeferred<Unit> didRun = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);

    /* JADX INFO: renamed from: androidx.datastore.core.RunOnce$runIfNeeded$1 */
    @Metadata(m754k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.datastore.core.RunOnce", m766f = "DataStoreImpl.kt", m767i = {0, 0, 1, 1}, m768l = {544, 497}, m769m = "runIfNeeded", m770n = {"this", "$this$withLock_u24default$iv", "this", "$this$withLock_u24default$iv"}, m771s = {"L$0", "L$1", "L$0", "L$1"})
    public static final class C05241 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C05241(Continuation<? super C05241> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return RunOnce.this.runIfNeeded(this);
        }
    }

    public abstract Object doRun(Continuation<? super Unit> continuation);

    public final Object awaitComplete(Continuation<? super Unit> continuation) {
        Object objAwait = this.didRun.await(continuation);
        return objAwait == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAwait : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object runIfNeeded(Continuation<? super Unit> continuation) throws Throwable {
        C05241 c05241;
        Mutex mutex;
        Throwable th;
        Mutex mutex2;
        RunOnce runOnce;
        if (continuation instanceof C05241) {
            c05241 = (C05241) continuation;
            int i = c05241.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c05241.label = i - Integer.MIN_VALUE;
            } else {
                c05241 = new C05241(continuation);
            }
        }
        Object obj = c05241.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c05241.label;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                if (this.didRun.isCompleted()) {
                    return Unit.INSTANCE;
                }
                mutex = this.runMutex;
                c05241.L$0 = this;
                c05241.L$1 = mutex;
                c05241.label = 1;
                if (mutex.lock(null, c05241) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                mutex2 = (Mutex) c05241.L$1;
                runOnce = (RunOnce) c05241.L$0;
                try {
                    ResultKt.throwOnFailure(obj);
                    CompletableDeferred<Unit> completableDeferred = runOnce.didRun;
                    Unit unit = Unit.INSTANCE;
                    completableDeferred.complete(unit);
                    mutex2.unlock(null);
                    return unit;
                } catch (Throwable th2) {
                    th = th2;
                    mutex2.unlock(null);
                    throw th;
                }
            }
            Mutex mutex3 = (Mutex) c05241.L$1;
            RunOnce runOnce2 = (RunOnce) c05241.L$0;
            ResultKt.throwOnFailure(obj);
            mutex = mutex3;
            this = runOnce2;
            if (!this.didRun.isCompleted()) {
                c05241.L$0 = this;
                c05241.L$1 = mutex;
                c05241.label = 2;
                if (this.doRun(c05241) != coroutine_suspended) {
                    runOnce = this;
                    mutex2 = mutex;
                    CompletableDeferred<Unit> completableDeferred2 = runOnce.didRun;
                    Unit unit2 = Unit.INSTANCE;
                    completableDeferred2.complete(unit2);
                    mutex2.unlock(null);
                    return unit2;
                }
                return coroutine_suspended;
            }
            Unit unit3 = Unit.INSTANCE;
            mutex.unlock(null);
            return unit3;
        } catch (Throwable th3) {
            Mutex mutex4 = mutex;
            th = th3;
            mutex2 = mutex4;
            mutex2.unlock(null);
            throw th;
        }
    }
}
