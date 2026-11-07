package androidx.camera.camera2.pipe.internal;

import androidx.camera.camera2.pipe.core.MutexToken;
import androidx.camera.camera2.pipe.core.MutexesKt;
import androidx.camera.camera2.pipe.core.Token;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.sync.Mutex;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "T", "Lkotlinx/coroutines/CoroutineScope;"}, m910k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m920c = "androidx.camera.camera2.pipe.internal.GraphSessionLock$withTokenInAsync$1", m921f = "GraphSessionLock.kt", m922i = {0, 0, 1}, m923l = {105, 64, 67}, m924m = "invokeSuspend", m925n = {"$this$asyncUndispatched", "$this$acquireTokenAndSuspend$iv", "$this$asyncUndispatched"}, m926s = {"L$0", "L$1", "L$0"}, m927v = 1)
@SourceDebugExtension({"SMAP\nGraphSessionLock.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GraphSessionLock.kt\nandroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1\n+ 2 Mutexes.kt\nandroidx/camera/camera2/pipe/core/MutexesKt\n*L\n1#1,104:1\n107#2,2:105\n*S KotlinDebug\n*F\n+ 1 GraphSessionLock.kt\nandroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1\n*L\n64#1:105,2\n*E\n"})
public final class GraphSessionLock$withTokenInAsync$1<T> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super T>, Object> {
    final /* synthetic */ Function2<Token, Continuation<? super Deferred<? extends T>>, Object> $action;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ GraphSessionLock this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public GraphSessionLock$withTokenInAsync$1(GraphSessionLock graphSessionLock, Function2<? super Token, ? super Continuation<? super Deferred<? extends T>>, ? extends Object> function2, Continuation<? super GraphSessionLock$withTokenInAsync$1> continuation) {
        super(2, continuation);
        this.this$0 = graphSessionLock;
        this.$action = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        GraphSessionLock$withTokenInAsync$1 graphSessionLock$withTokenInAsync$1 = new GraphSessionLock$withTokenInAsync$1(this.this$0, this.$action, continuation);
        graphSessionLock$withTokenInAsync$1.L$0 = obj;
        return graphSessionLock$withTokenInAsync$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super T> continuation) {
        return ((GraphSessionLock$withTokenInAsync$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0081 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        CoroutineScope coroutineScope;
        GraphSessionLock graphSessionLock;
        Mutex mutex;
        CoroutineScope coroutineScope2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            coroutineScope = (CoroutineScope) this.L$0;
            graphSessionLock = this.this$0;
            Mutex mutex2 = graphSessionLock.mutex;
            this.L$0 = coroutineScope;
            this.L$1 = mutex2;
            this.L$2 = graphSessionLock;
            this.label = 1;
            if (MutexesKt.lockAndSuspend(mutex2, this) != coroutine_suspended) {
                mutex = mutex2;
            }
        }
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            coroutineScope2 = (CoroutineScope) this.L$0;
            ResultKt.throwOnFailure(obj);
            CoroutineScopeKt.ensureActive(coroutineScope2);
            this.L$0 = null;
            this.label = 3;
            Object objAwait = ((Deferred) obj).await(this);
            return objAwait != coroutine_suspended ? coroutine_suspended : objAwait;
        }
        graphSessionLock = (GraphSessionLock) this.L$2;
        mutex = (Mutex) this.L$1;
        CoroutineScope coroutineScope3 = (CoroutineScope) this.L$0;
        ResultKt.throwOnFailure(obj);
        coroutineScope = coroutineScope3;
        MutexToken mutexToken = new MutexToken(mutex);
        GraphSessionLock$withTokenInAsync$1$deferred$1 graphSessionLock$withTokenInAsync$1$deferred$1 = new GraphSessionLock$withTokenInAsync$1$deferred$1(this.$action, null);
        this.L$0 = coroutineScope;
        this.L$1 = null;
        this.L$2 = null;
        this.label = 2;
        Object objUse = graphSessionLock.use(mutexToken, graphSessionLock$withTokenInAsync$1$deferred$1, this);
        if (objUse != coroutine_suspended) {
            coroutineScope2 = coroutineScope;
            obj = objUse;
            CoroutineScopeKt.ensureActive(coroutineScope2);
            this.L$0 = null;
            this.label = 3;
            Object objAwait2 = ((Deferred) obj).await(this);
            if (objAwait2 != coroutine_suspended) {
            }
        }
    }
}
