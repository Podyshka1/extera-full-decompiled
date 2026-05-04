package androidx.camera.camera2.pipe.core;

import java.util.Collection;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.selects.SelectImplementation;

/* JADX INFO: loaded from: classes3.dex */
public final class PruningProcessingQueue {
    public static final Companion Companion = new Companion(null);
    private final int capacity;
    private final Channel channel;
    private final Function1 onUnprocessedElements;
    private final Function2 process;
    private final Function1 prune;
    private final ArrayDeque queue;
    private final AtomicBoolean started;

    public PruningProcessingQueue(int i, Function1 prune, Function1 onUnprocessedElements, Function2 process) {
        Intrinsics.checkNotNullParameter(prune, "prune");
        Intrinsics.checkNotNullParameter(onUnprocessedElements, "onUnprocessedElements");
        Intrinsics.checkNotNullParameter(process, "process");
        this.capacity = i;
        this.prune = prune;
        this.onUnprocessedElements = onUnprocessedElements;
        this.process = process;
        this.started = AtomicFU.atomic(false);
        this.channel = ChannelKt.Channel$default(i, null, new Function1() { // from class: androidx.camera.camera2.pipe.core.PruningProcessingQueue$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PruningProcessingQueue.channel$lambda$0(this.f$0, obj);
            }
        }, 2, null);
        this.queue = new ArrayDeque();
    }

    public /* synthetic */ PruningProcessingQueue(int i, Function1 function1, Function1 function12, Function2 function2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? Integer.MAX_VALUE : i, (i2 & 2) != 0 ? new Function1() { // from class: androidx.camera.camera2.pipe.core.PruningProcessingQueue$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PruningProcessingQueue._init_$lambda$0((List) obj);
            }
        } : function1, (i2 & 4) != 0 ? new Function1() { // from class: androidx.camera.camera2.pipe.core.PruningProcessingQueue$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PruningProcessingQueue._init_$lambda$1((List) obj);
            }
        } : function12, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$0(List it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$1(List it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit channel$lambda$0(PruningProcessingQueue pruningProcessingQueue, Object obj) {
        pruningProcessingQueue.queue.add(obj);
        return Unit.INSTANCE;
    }

    public final boolean tryEmit(Object obj) {
        return ChannelResult.m3681isSuccessimpl(this.channel.mo3670trySendJP2dKIU(obj));
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.core.PruningProcessingQueue$processingLoop$2 */
    static final class C02342 extends SuspendLambda implements Function2 {
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        C02342(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            C02342 c02342 = PruningProcessingQueue.this.new C02342(continuation);
            c02342.L$0 = obj;
            return c02342;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C02342) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Path cross not found for [B:13:0x0033, B:23:0x007f], limit reached: 43 */
        /* JADX WARN: Path cross not found for [B:13:0x0033, B:26:0x0084], limit reached: 43 */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0039 A[Catch: all -> 0x001a, CancellationException -> 0x00e1, TRY_ENTER, TryCatch #2 {CancellationException -> 0x00e1, all -> 0x001a, blocks: (B:6:0x0016, B:15:0x0039, B:17:0x005a, B:18:0x0066), top: B:43:0x0016 }] */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00a3  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x00c6  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00f6 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:42:0x00f7  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0070 -> B:21:0x0073). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) throws Throwable {
            Ref$ObjectRef ref$ObjectRef;
            CoroutineScope coroutineScope;
            Throwable th;
            Deferred deferredAsync$default;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope2 = (CoroutineScope) this.L$0;
                ref$ObjectRef = new Ref$ObjectRef();
                coroutineScope = coroutineScope2;
                if (CoroutineScopeKt.isActive(coroutineScope)) {
                }
                th = null;
                PruningProcessingQueue.this.closeAndReleaseUnprocessedElements(th);
                if (th == null) {
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ref$ObjectRef = (Ref$ObjectRef) this.L$1;
                coroutineScope = (CoroutineScope) this.L$0;
                try {
                    ResultKt.throwOnFailure(obj);
                } catch (CancellationException unused) {
                    if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                        android.util.Log.d("CXCP", "PruningProcessingQueue: Scope cancelled");
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (Log.INSTANCE.getERROR_LOGGABLE()) {
                        android.util.Log.e("CXCP", "Encountered exception during processing", th);
                    }
                }
                if (!PruningProcessingQueue.this.queue.isEmpty() && ref$ObjectRef.element == null) {
                    Object objFirst = PruningProcessingQueue.this.queue.first();
                    deferredAsync$default = BuildersKt__Builders_commonKt.async$default(coroutineScope, null, null, new PruningProcessingQueue$processingLoop$2$deferred$1(PruningProcessingQueue.this, objFirst, null), 3, null);
                    if (!deferredAsync$default.isCancelled()) {
                        if (Log.INSTANCE.getINFO_LOGGABLE()) {
                            android.util.Log.i("CXCP", "Unable to process " + objFirst + " due to Job cancellation");
                        }
                        th = null;
                        PruningProcessingQueue.this.closeAndReleaseUnprocessedElements(th);
                        if (th == null) {
                            return null;
                        }
                        throw th;
                    }
                    PruningProcessingQueue.this.queue.removeFirst();
                    ref$ObjectRef.element = deferredAsync$default;
                }
                if (CoroutineScopeKt.isActive(coroutineScope)) {
                    PruningProcessingQueue pruningProcessingQueue = PruningProcessingQueue.this;
                    SelectImplementation selectImplementation = new SelectImplementation(getContext());
                    selectImplementation.invoke(pruningProcessingQueue.channel.getOnReceive(), new PruningProcessingQueue$processingLoop$2$1$1(pruningProcessingQueue, null));
                    Deferred deferred = (Deferred) ref$ObjectRef.element;
                    if (deferred != null) {
                        selectImplementation.invoke(deferred.getOnAwait(), new PruningProcessingQueue$processingLoop$2$1$2(ref$ObjectRef, null));
                    }
                    this.L$0 = coroutineScope;
                    this.L$1 = ref$ObjectRef;
                    this.label = 1;
                    if (selectImplementation.doSelect(this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    if (!PruningProcessingQueue.this.queue.isEmpty()) {
                        Object objFirst2 = PruningProcessingQueue.this.queue.first();
                        deferredAsync$default = BuildersKt__Builders_commonKt.async$default(coroutineScope, null, null, new PruningProcessingQueue$processingLoop$2$deferred$1(PruningProcessingQueue.this, objFirst2, null), 3, null);
                        if (!deferredAsync$default.isCancelled()) {
                        }
                    }
                    if (CoroutineScopeKt.isActive(coroutineScope)) {
                    }
                }
                th = null;
                PruningProcessingQueue.this.closeAndReleaseUnprocessedElements(th);
                if (th == null) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object processingLoop(Continuation continuation) {
        return SupervisorKt.supervisorScope(new C02342(null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void closeAndReleaseUnprocessedElements(Throwable th) {
        if (this.channel.close(th)) {
            Object objMo3669tryReceivePtdJZtk = this.channel.mo3669tryReceivePtdJZtk();
            while (ChannelResult.m3681isSuccessimpl(objMo3669tryReceivePtdJZtk)) {
                this.queue.add(ChannelResult.m3678getOrThrowimpl(objMo3669tryReceivePtdJZtk));
                objMo3669tryReceivePtdJZtk = this.channel.mo3669tryReceivePtdJZtk();
            }
            if (this.queue.isEmpty()) {
                return;
            }
            this.onUnprocessedElements.invoke(CollectionsKt.toMutableList((Collection) this.queue));
            this.queue.clear();
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final PruningProcessingQueue processIn(PruningProcessingQueue pruningProcessingQueue, CoroutineScope scope) {
            Intrinsics.checkNotNullParameter(pruningProcessingQueue, "<this>");
            Intrinsics.checkNotNullParameter(scope, "scope");
            if (!pruningProcessingQueue.started.compareAndSet(false, true)) {
                throw new IllegalStateException("PruningProcessingQueue cannot be re-started!");
            }
            if (BuildersKt__Builders_commonKt.launch$default(scope, null, null, new PruningProcessingQueue$Companion$processIn$job$1(pruningProcessingQueue, null), 3, null).isCancelled()) {
                pruningProcessingQueue.closeAndReleaseUnprocessedElements(null);
            }
            return pruningProcessingQueue;
        }
    }
}
