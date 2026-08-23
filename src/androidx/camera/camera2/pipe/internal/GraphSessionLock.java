package androidx.camera.camera2.pipe.internal;

import androidx.camera.camera2.pipe.core.MutexToken;
import androidx.camera.camera2.pipe.core.Token;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003JL\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b\"\u0004\b\u0000\u0010\u00042\u0006\u0010\u0006\u001a\u00020\u00052'\u0010\n\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\b\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0007¢\u0006\u0002\b\tH\u0002¢\u0006\u0004\b\f\u0010\rJ>\u0010\u000f\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0004*\u00020\u000e2\"\u0010\n\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\b\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0007H\u0082@¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0013\u001a\u00020\u000eH\u0080@¢\u0006\u0004\b\u0011\u0010\u0012J\\\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b\"\u0004\b\u0000\u0010\u00042\u0006\u0010\u0006\u001a\u00020\u000527\u0010\u0017\u001a3\b\u0001\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0016\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\b\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0007H\u0000¢\u0006\u0004\b\u0018\u0010\rR\u0014\u0010\u001b\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006\u001d"}, d2 = {"Landroidx/camera/camera2/pipe/internal/GraphSessionLock;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "T", "Lkotlinx/coroutines/CoroutineScope;", "scope", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "Lkotlin/ExtensionFunctionType;", "block", "Lkotlinx/coroutines/Deferred;", "asyncUndispatched", "(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Deferred;", "Landroidx/camera/camera2/pipe/core/Token;", "use", "(Landroidx/camera/camera2/pipe/core/Token;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "acquireToken$camera_camera2_pipe", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "acquireToken", "Lkotlin/ParameterName;", "name", "token", "action", "withTokenInAsync$camera_camera2_pipe", "withTokenInAsync", "Lkotlinx/coroutines/sync/Mutex;", "mutex", "Lkotlinx/coroutines/sync/Mutex;", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGraphSessionLock.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GraphSessionLock.kt\nandroidx/camera/camera2/pipe/internal/GraphSessionLock\n+ 2 Mutexes.kt\nandroidx/camera/camera2/pipe/core/MutexesKt\n*L\n1#1,104:1\n98#2,2:105\n*S KotlinDebug\n*F\n+ 1 GraphSessionLock.kt\nandroidx/camera/camera2/pipe/internal/GraphSessionLock\n*L\n43#1:105,2\n*E\n"})
public final class GraphSessionLock {
    private final Mutex mutex = MutexKt.Mutex$default(false, 1, null);

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.internal.GraphSessionLock$use$1 */
    @Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.camera.camera2.pipe.internal.GraphSessionLock", m766f = "GraphSessionLock.kt", m767i = {0}, m768l = {98}, m769m = "use", m770n = {"$this$use"}, m771s = {"L$0"}, m772v = 1)
    public static final class C02461<T> extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C02461(Continuation<? super C02461> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return GraphSessionLock.this.use(null, null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object acquireToken$camera_camera2_pipe(Continuation<? super Token> continuation) {
        GraphSessionLock$acquireToken$1 graphSessionLock$acquireToken$1;
        Mutex mutex;
        if (continuation instanceof GraphSessionLock$acquireToken$1) {
            graphSessionLock$acquireToken$1 = (GraphSessionLock$acquireToken$1) continuation;
            int i = graphSessionLock$acquireToken$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                graphSessionLock$acquireToken$1.label = i - Integer.MIN_VALUE;
            } else {
                graphSessionLock$acquireToken$1 = new GraphSessionLock$acquireToken$1(this, continuation);
            }
        }
        Object obj = graphSessionLock$acquireToken$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = graphSessionLock$acquireToken$1.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            mutex = this.mutex;
            graphSessionLock$acquireToken$1.L$0 = mutex;
            graphSessionLock$acquireToken$1.label = 1;
            if (Mutex.DefaultImpls.lock$default(mutex, null, graphSessionLock$acquireToken$1, 1, null) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            mutex = (Mutex) graphSessionLock$acquireToken$1.L$0;
            ResultKt.throwOnFailure(obj);
        }
        return new MutexToken(mutex);
    }

    public final <T> Deferred<T> withTokenInAsync$camera_camera2_pipe(CoroutineScope scope, Function2<? super Token, ? super Continuation<? super Deferred<? extends T>>, ? extends Object> action) {
        return asyncUndispatched(scope, new GraphSessionLock$withTokenInAsync$1(this, action, null));
    }

    private final <T> Deferred<T> asyncUndispatched(CoroutineScope scope, Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> block) {
        final CompletableJob completableJobJob = JobKt.Job((Job) scope.getCoroutineContext().get(Job.INSTANCE));
        Deferred<T> deferredAsync = BuildersKt.async(scope, scope.getCoroutineContext().plus(completableJobJob), CoroutineStart.UNDISPATCHED, new GraphSessionLock$asyncUndispatched$result$1(block, null));
        deferredAsync.invokeOnCompletion(new Function1() { // from class: androidx.camera.camera2.pipe.internal.GraphSessionLock$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GraphSessionLock.m1543$r8$lambda$Rh7Chtw743aTwAubUmFZvrz3kQ(completableJobJob, (Throwable) obj);
            }
        });
        return deferredAsync;
    }

    /* JADX INFO: renamed from: $r8$lambda$Rh7Chtw743aTwAubUmFZvrz-3kQ, reason: not valid java name */
    public static Unit m1543$r8$lambda$Rh7Chtw743aTwAubUmFZvrz3kQ(CompletableJob completableJob, Throwable th) {
        completableJob.complete();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final <T> Object use(Token token, Function2<? super Token, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) {
        C02461 c02461;
        if (continuation instanceof C02461) {
            c02461 = (C02461) continuation;
            int i = c02461.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c02461.label = i - Integer.MIN_VALUE;
            } else {
                c02461 = new C02461(continuation);
            }
        }
        Object objInvoke = c02461.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c02461.label;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(objInvoke);
                c02461.L$0 = token;
                c02461.label = 1;
                objInvoke = function2.invoke(token, c02461);
                if (objInvoke == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                token = (Token) c02461.L$0;
                ResultKt.throwOnFailure(objInvoke);
            }
            return objInvoke;
        } finally {
            token.release();
        }
    }
}
