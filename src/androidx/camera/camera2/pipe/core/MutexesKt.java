package androidx.camera.camera2.pipe.core;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.sync.Mutex;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001aB\u0010\n\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012'\u0010\b\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003¢\u0006\u0002\b\u0007¢\u0006\u0004\b\n\u0010\u000b\u001a\u0014\u0010\r\u001a\u00020\u0005*\u00020\fH\u0082@¢\u0006\u0004\b\r\u0010\u000e\u001a\u0014\u0010\u000f\u001a\u00020\u0005*\u00020\fH\u0082@¢\u0006\u0004\b\u000f\u0010\u000e¨\u0006\u0010"}, d2 = {"Landroidx/camera/camera2/pipe/core/CoroutineMutex;", "Lkotlinx/coroutines/CoroutineScope;", "scope", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/ExtensionFunctionType;", "block", "Lkotlinx/coroutines/Job;", "withLockLaunch", "(Landroidx/camera/camera2/pipe/core/CoroutineMutex;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;", "Lkotlinx/coroutines/sync/Mutex;", "lockWithoutOwner", "(Lkotlinx/coroutines/sync/Mutex;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "lockAndSuspend", "camera-camera2-pipe"}, m910k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class MutexesKt {

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.core.MutexesKt$withLockLaunch$1 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.camera.camera2.pipe.core.MutexesKt$withLockLaunch$1", m921f = "Mutexes.kt", m922i = {0, 1}, m923l = {177, 90}, m924m = "invokeSuspend", m925n = {"$this$withLockSuspend$iv", "$this$withLockSuspend$iv"}, m926s = {"L$0", "L$0"}, m927v = 1)
    @SourceDebugExtension({"SMAP\nMutexes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutexes.kt\nandroidx/camera/camera2/pipe/core/MutexesKt$withLockLaunch$1\n+ 2 Mutexes.kt\nandroidx/camera/camera2/pipe/core/MutexesKt\n*L\n1#1,176:1\n148#2,5:177\n*S KotlinDebug\n*F\n+ 1 Mutexes.kt\nandroidx/camera/camera2/pipe/core/MutexesKt$withLockLaunch$1\n*L\n90#1:177,5\n*E\n"})
    public static final class C02321 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function2<CoroutineScope, Continuation<? super Unit>, Object> $block;
        final /* synthetic */ CoroutineMutex $this_withLockLaunch;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C02321(CoroutineMutex coroutineMutex, Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super C02321> continuation) {
            super(2, continuation);
            this.$this_withLockLaunch = coroutineMutex;
            this.$block = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C02321 c02321 = new C02321(this.$this_withLockLaunch, this.$block, continuation);
            c02321.L$0 = obj;
            return c02321;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02321) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Mutex mutex;
            Function2<CoroutineScope, Continuation<? super Unit>, Object> function2;
            Throwable th;
            Mutex mutex2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    CoroutineScopeKt.ensureActive((CoroutineScope) this.L$0);
                    mutex = this.$this_withLockLaunch.getMutex();
                    function2 = this.$block;
                    this.L$0 = mutex;
                    this.L$1 = function2;
                    this.label = 1;
                    if (MutexesKt.lockAndSuspend(mutex, this) != coroutine_suspended) {
                    }
                    return coroutine_suspended;
                }
                if (i != 1) {
                    if (i != 2) {
                        Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    mutex2 = (Mutex) this.L$0;
                    try {
                        ResultKt.throwOnFailure(obj);
                        Unit unit = Unit.INSTANCE;
                        Mutex.unlock$default(mutex2, null, 1, null);
                        return Unit.INSTANCE;
                    } catch (Throwable th2) {
                        th = th2;
                        Mutex.unlock$default(mutex2, null, 1, null);
                        throw th;
                    }
                }
                function2 = (Function2) this.L$1;
                Mutex mutex3 = (Mutex) this.L$0;
                ResultKt.throwOnFailure(obj);
                mutex = mutex3;
                this.L$0 = mutex;
                this.L$1 = null;
                this.label = 2;
                if (CoroutineScopeKt.coroutineScope(function2, this) != coroutine_suspended) {
                    mutex2 = mutex;
                    Unit unit2 = Unit.INSTANCE;
                    Mutex.unlock$default(mutex2, null, 1, null);
                    return Unit.INSTANCE;
                }
                return coroutine_suspended;
            } catch (Throwable th3) {
                Mutex mutex4 = mutex;
                th = th3;
                mutex2 = mutex4;
                Mutex.unlock$default(mutex2, null, 1, null);
                throw th;
            }
        }
    }

    public static final Job withLockLaunch(CoroutineMutex coroutineMutex, CoroutineScope coroutineScope, Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, CoroutineStart.UNDISPATCHED, new C02321(coroutineMutex, function2, null), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object lockWithoutOwner(Mutex mutex, Continuation<? super Unit> continuation) {
        Object objLock = mutex.lock(null, continuation);
        return objLock == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objLock : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object lockAndSuspend(Mutex mutex, Continuation<? super Unit> continuation) {
        if (IntrinsicsKt.wrapWithContinuationImpl(MutexesKt$lockAndSuspend$lockFn$1.INSTANCE, mutex, continuation) != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            IntrinsicsKt.intercepted(continuation).resumeWith(Result.m3608constructorimpl(Unit.INSTANCE));
        }
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (coroutine_suspended == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return coroutine_suspended == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? coroutine_suspended : Unit.INSTANCE;
    }
}
