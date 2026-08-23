package androidx.camera.camera2.pipe.core;

import android.os.Handler;
import java.util.concurrent.Executor;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.TimeoutKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001Bc\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\u0007\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00050\r¢\u0006\u0004\b\u0011\u0010\u0012JA\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u0018\"\u0004\b\u0000\u0010\u00132\u0006\u0010\u0014\u001a\u00020\u00072\u001c\u0010\u0017\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0015H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ;\u0010\u001d\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u00132\u0006\u0010\u001c\u001a\u00020\u001b2\u001c\u0010\u0017\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0015¢\u0006\u0004\b\u001d\u0010\u001eR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u001f\u001a\u0004\b \u0010!R\u0014\u0010\u0004\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u001fR\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\"\u001a\u0004\b#\u0010$R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010%\u001a\u0004\b&\u0010'R\u0017\u0010\t\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\t\u0010\"\u001a\u0004\b(\u0010$R\u0017\u0010\n\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\n\u0010%\u001a\u0004\b)\u0010'R\u0017\u0010\u000b\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u000b\u0010\"\u001a\u0004\b*\u0010$R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\f\u0010%\u001a\u0004\b+\u0010'R\u001a\u0010-\u001a\b\u0012\u0004\u0012\u00020\u000e0,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.R\u001a\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00050,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u0010.R\u0011\u0010\u000f\u001a\u00020\u000e8F¢\u0006\u0006\u001a\u0004\b0\u00101R\u0011\u0010\u0010\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b2\u0010$¨\u00063"}, d2 = {"Landroidx/camera/camera2/pipe/core/Threads;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;", "cameraPipeScope", "cameraPipeDispatchScope", "Ljava/util/concurrent/Executor;", "blockingExecutor", "Lkotlinx/coroutines/CoroutineDispatcher;", "blockingDispatcher", "backgroundExecutor", "backgroundDispatcher", "lightweightExecutor", "lightweightDispatcher", "Lkotlin/Function0;", "Landroid/os/Handler;", "camera2Handler", "camera2Executor", "<init>", "(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/Executor;Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/concurrent/Executor;Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/concurrent/Executor;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "T", "dispatcher", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "block", "Lkotlinx/coroutines/Deferred;", "runAsyncSupervised", "(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Deferred;", _UrlKt.FRAGMENT_ENCODE_SET, "timeoutMs", "runBlockingCheckedOrNull", "(JLkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "Lkotlinx/coroutines/CoroutineScope;", "getCameraPipeScope", "()Lkotlinx/coroutines/CoroutineScope;", "Ljava/util/concurrent/Executor;", "getBlockingExecutor", "()Ljava/util/concurrent/Executor;", "Lkotlinx/coroutines/CoroutineDispatcher;", "getBlockingDispatcher", "()Lkotlinx/coroutines/CoroutineDispatcher;", "getBackgroundExecutor", "getBackgroundDispatcher", "getLightweightExecutor", "getLightweightDispatcher", "Lkotlin/Lazy;", "_camera2Handler", "Lkotlin/Lazy;", "_camera2Executor", "getCamera2Handler", "()Landroid/os/Handler;", "getCamera2Executor", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nThreads.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Threads.kt\nandroidx/camera/camera2/pipe/core/Threads\n+ 2 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,100:1\n63#2,2:101\n*S KotlinDebug\n*F\n+ 1 Threads.kt\nandroidx/camera/camera2/pipe/core/Threads\n*L\n88#1:101,2\n*E\n"})
public final class Threads {
    private final Lazy<Executor> _camera2Executor;
    private final Lazy<Handler> _camera2Handler;
    private final CoroutineDispatcher backgroundDispatcher;
    private final Executor backgroundExecutor;
    private final CoroutineDispatcher blockingDispatcher;
    private final Executor blockingExecutor;
    private final CoroutineScope cameraPipeDispatchScope;
    private final CoroutineScope cameraPipeScope;
    private final CoroutineDispatcher lightweightDispatcher;
    private final Executor lightweightExecutor;

    public Threads(CoroutineScope coroutineScope, CoroutineScope coroutineScope2, Executor executor, CoroutineDispatcher coroutineDispatcher, Executor executor2, CoroutineDispatcher coroutineDispatcher2, Executor executor3, CoroutineDispatcher coroutineDispatcher3, final Function0<? extends Handler> function0, final Function0<? extends Executor> function02) {
        this.cameraPipeScope = coroutineScope;
        this.cameraPipeDispatchScope = coroutineScope2;
        this.blockingExecutor = executor;
        this.blockingDispatcher = coroutineDispatcher;
        this.backgroundExecutor = executor2;
        this.backgroundDispatcher = coroutineDispatcher2;
        this.lightweightExecutor = executor3;
        this.lightweightDispatcher = coroutineDispatcher3;
        this._camera2Handler = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.pipe.core.Threads$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Threads.$r8$lambda$TFK4hE4yNW5J9VReSnUURt1j2uc(function0);
            }
        });
        this._camera2Executor = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.pipe.core.Threads$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Threads.m1486$r8$lambda$z326WYWokXVYn48jwdvxyCWiTE(function02);
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

    public static Handler $r8$lambda$TFK4hE4yNW5J9VReSnUURt1j2uc(Function0 function0) {
        return (Handler) function0.invoke();
    }

    /* JADX INFO: renamed from: $r8$lambda$z326WYWokXVYn48jwdvxyCW-iTE, reason: not valid java name */
    public static Executor m1486$r8$lambda$z326WYWokXVYn48jwdvxyCWiTE(Function0 function0) {
        return (Executor) function0.invoke();
    }

    public final Handler getCamera2Handler() {
        return this._camera2Handler.getValue();
    }

    public final Executor getCamera2Executor() {
        return this._camera2Executor.getValue();
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.core.Threads$runBlockingCheckedOrNull$1 */
    @Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "T", "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.camera.camera2.pipe.core.Threads$runBlockingCheckedOrNull$1", m766f = "Threads.kt", m767i = {}, m768l = {85}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
    public static final class C02371<T> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super T>, Object> {
        final /* synthetic */ Function1<Continuation<? super T>, Object> $block;
        final /* synthetic */ long $timeoutMs;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C02371(Function1<? super Continuation<? super T>, ? extends Object> function1, long j, Continuation<? super C02371> continuation) {
            super(2, continuation);
            this.$block = function1;
            this.$timeoutMs = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return Threads.this.new C02371(this.$block, this.$timeoutMs, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super T> continuation) {
            return ((C02371) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
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
        @Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "T", "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
        @DebugMetadata(m765c = "androidx.camera.camera2.pipe.core.Threads$runBlockingCheckedOrNull$1$1", m766f = "Threads.kt", m767i = {}, m768l = {85}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
        public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super T>, Object> {
            final /* synthetic */ Deferred<T> $result;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public AnonymousClass1(Deferred<? extends T> deferred, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$result = deferred;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.$result, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super T> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                Deferred<T> deferred = this.$result;
                this.label = 1;
                Object objAwait = deferred.await(this);
                return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
            }
        }
    }

    public final <T> T runBlockingCheckedOrNull(long timeoutMs, Function1<? super Continuation<? super T>, ? extends Object> block) {
        try {
            return (T) BuildersKt.runBlocking(this.blockingDispatcher, new C02371(block, timeoutMs, null));
        } catch (InterruptedException e) {
            if (!Log.INSTANCE.getINFO_LOGGABLE()) {
                return null;
            }
            android.util.Log.i("CXCP", "runBlockingCheckedOrNull cancelled by thread interruption", e);
            return null;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.core.Threads$runAsyncSupervised$1 */
    @Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "T", "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.camera.camera2.pipe.core.Threads$runAsyncSupervised$1", m766f = "Threads.kt", m767i = {}, m768l = {97}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
    public static final class C02361<T> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super T>, Object> {
        final /* synthetic */ Function1<Continuation<? super T>, Object> $block;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C02361(Function1<? super Continuation<? super T>, ? extends Object> function1, Continuation<? super C02361> continuation) {
            super(2, continuation);
            this.$block = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02361(this.$block, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super T> continuation) {
            return ((C02361) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            Function1<Continuation<? super T>, Object> function1 = this.$block;
            this.label = 1;
            Object objInvoke = function1.invoke(this);
            return objInvoke == coroutine_suspended ? coroutine_suspended : objInvoke;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <T> Deferred<T> runAsyncSupervised(CoroutineDispatcher dispatcher, Function1<? super Continuation<? super T>, ? extends Object> block) {
        return BuildersKt__Builders_commonKt.async$default(this.cameraPipeDispatchScope, dispatcher, null, new C02361(block, null), 2, null);
    }
}
