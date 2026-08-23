package androidx.camera.camera2.pipe.core;

import com.android.dx.io.Opcodes;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
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
import kotlinx.coroutines.selects.SelectClause1;
import kotlinx.coroutines.selects.SelectImplementation;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000 )*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001)Bm\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u001a\b\u0002\u0010\b\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u0012\u001a\b\u0002\u0010\n\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\t\u0012\u0004\u0012\u00020\u00070\u0005\u0012\"\u0010\r\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\f\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0082@¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0015\u001a\u00020\u00072\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00028\u0000¢\u0006\u0004\b\u0019\u0010\u001aR\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR&\u0010\b\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00020\u00070\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u001eR&\u0010\n\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\t\u0012\u0004\u0012\u00020\u00070\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u001eR0\u0010\r\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\f\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u001fR\u0014\u0010!\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u001a\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00000#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u001a\u0010'\u001a\b\u0012\u0004\u0012\u00028\u00000&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(¨\u0006*"}, d2 = {"Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;", "T", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "capacity", "Lkotlin/Function1;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "prune", _UrlKt.FRAGMENT_ENCODE_SET, "onUnprocessedElements", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "process", "<init>", "(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V", _UrlKt.FRAGMENT_ENCODE_SET, "processingLoop", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "cause", "closeAndReleaseUnprocessedElements", "(Ljava/lang/Throwable;)V", "element", _UrlKt.FRAGMENT_ENCODE_SET, "tryEmit", "(Ljava/lang/Object;)Z", "I", "getCapacity", "()I", "Lkotlin/jvm/functions/Function1;", "Lkotlin/jvm/functions/Function2;", "Lkotlinx/atomicfu/AtomicBoolean;", "started", "Lkotlinx/atomicfu/AtomicBoolean;", "Lkotlinx/coroutines/channels/Channel;", "channel", "Lkotlinx/coroutines/channels/Channel;", "Lkotlin/collections/ArrayDeque;", "queue", "Lkotlin/collections/ArrayDeque;", "Companion", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPruningProcessingQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PruningProcessingQueue.kt\nandroidx/camera/camera2/pipe/core/PruningProcessingQueue\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,213:1\n1#2:214\n*E\n"})
public final class PruningProcessingQueue<T> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final int capacity;
    private final Channel<T> channel;
    private final Function1<List<? extends T>, Unit> onUnprocessedElements;
    private final Function2<T, Continuation<? super Unit>, Object> process;
    private final Function1<List<T>, Unit> prune;
    private final ArrayDeque<T> queue;
    private final AtomicBoolean started;

    /* JADX WARN: Multi-variable type inference failed */
    public PruningProcessingQueue(int i, Function1<? super List<T>, Unit> function1, Function1<? super List<? extends T>, Unit> function12, Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2) {
        this.capacity = i;
        this.prune = function1;
        this.onUnprocessedElements = function12;
        this.process = function2;
        this.started = AtomicFU.atomic(false);
        this.channel = ChannelKt.Channel$default(i, null, new Function1() { // from class: androidx.camera.camera2.pipe.core.PruningProcessingQueue$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PruningProcessingQueue.$r8$lambda$RG3ppoJODn6AVP6U8lNR6Aptzas(this.f$0, obj);
            }
        }, 2, null);
        this.queue = new ArrayDeque<>();
    }

    public /* synthetic */ PruningProcessingQueue(int i, Function1 function1, Function1 function12, Function2 function2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? Integer.MAX_VALUE : i, (i2 & 2) != 0 ? new Function1() { // from class: androidx.camera.camera2.pipe.core.PruningProcessingQueue$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Unit.INSTANCE;
            }
        } : function1, (i2 & 4) != 0 ? new Function1() { // from class: androidx.camera.camera2.pipe.core.PruningProcessingQueue$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Unit.INSTANCE;
            }
        } : function12, function2);
    }

    public static Unit $r8$lambda$RG3ppoJODn6AVP6U8lNR6Aptzas(PruningProcessingQueue pruningProcessingQueue, Object obj) {
        pruningProcessingQueue.queue.add(obj);
        return Unit.INSTANCE;
    }

    public final boolean tryEmit(T element) {
        return ChannelResult.m4818isSuccessimpl(this.channel.mo4807trySendJP2dKIU(element));
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.core.PruningProcessingQueue$processingLoop$2 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0001\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.camera.camera2.pipe.core.PruningProcessingQueue$processingLoop$2", m766f = "PruningProcessingQueue.kt", m767i = {0, 0}, m768l = {Opcodes.MUL_INT_LIT8}, m769m = "invokeSuspend", m770n = {"$this$supervisorScope", "processDeferred"}, m771s = {"L$0", "L$1"}, m772v = 1)
    @SourceDebugExtension({"SMAP\nPruningProcessingQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PruningProcessingQueue.kt\nandroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2\n+ 2 Select.kt\nkotlinx/coroutines/selects/SelectKt\n+ 3 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,213:1\n54#2,5:214\n50#3,2:219\n86#3,2:221\n59#3,2:223\n1#4:225\n*S KotlinDebug\n*F\n+ 1 PruningProcessingQueue.kt\nandroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2\n*L\n120#1:214,5\n139#1:219,2\n142#1:221,2\n156#1:223,2\n*E\n"})
    public static final class C02352 extends SuspendLambda implements Function2<CoroutineScope, Continuation, Object> {
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;
        final /* synthetic */ PruningProcessingQueue<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C02352(PruningProcessingQueue<T> pruningProcessingQueue, Continuation<? super C02352> continuation) {
            super(2, continuation);
            this.this$0 = pruningProcessingQueue;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C02352 c02352 = new C02352(this.this$0, continuation);
            c02352.L$0 = obj;
            return c02352;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C02352) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Path cross not found for [B:13:0x0031, B:23:0x007d], limit reached: 43 */
        /* JADX WARN: Path cross not found for [B:13:0x0031, B:26:0x0082], limit reached: 43 */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0037 A[Catch: all -> 0x001a, CancellationException -> 0x00dc, TRY_ENTER, TryCatch #2 {CancellationException -> 0x00dc, all -> 0x001a, blocks: (B:6:0x0016, B:15:0x0037, B:17:0x0058, B:18:0x0064), top: B:43:0x0016 }] */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00a1  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x00c1  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00f1 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:42:0x00f2  */
        /* JADX WARN: Type inference failed for: r6v3, types: [T, kotlinx.coroutines.Deferred, kotlinx.coroutines.Job] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x006e -> B:21:0x0071). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) throws Throwable {
            Ref.ObjectRef objectRef;
            CoroutineScope coroutineScope;
            Throwable th;
            ?? r6;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope2 = (CoroutineScope) this.L$0;
                objectRef = new Ref.ObjectRef();
                coroutineScope = coroutineScope2;
                if (CoroutineScopeKt.isActive(coroutineScope)) {
                }
                th = null;
                this.this$0.closeAndReleaseUnprocessedElements(th);
                if (th == null) {
                }
            } else {
                if (i != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                objectRef = (Ref.ObjectRef) this.L$1;
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
                if (!((PruningProcessingQueue) this.this$0).queue.isEmpty() && objectRef.element == null) {
                    Object objFirst = ((PruningProcessingQueue) this.this$0).queue.first();
                    r6 = (T) BuildersKt__Builders_commonKt.async$default(coroutineScope, null, null, new PruningProcessingQueue$processingLoop$2$deferred$1(this.this$0, objFirst, null), 3, null);
                    if (!r6.isCancelled()) {
                        if (Log.INSTANCE.getINFO_LOGGABLE()) {
                            android.util.Log.i("CXCP", "Unable to process " + objFirst + " due to Job cancellation");
                        }
                        th = null;
                        this.this$0.closeAndReleaseUnprocessedElements(th);
                        if (th == null) {
                            return null;
                        }
                        throw th;
                    }
                    ((PruningProcessingQueue) this.this$0).queue.removeFirst();
                    objectRef.element = r6;
                }
                if (CoroutineScopeKt.isActive(coroutineScope)) {
                    PruningProcessingQueue<T> pruningProcessingQueue = this.this$0;
                    SelectImplementation selectImplementation = new SelectImplementation(getContext());
                    selectImplementation.invoke((SelectClause1) ((PruningProcessingQueue) pruningProcessingQueue).channel.getOnReceive(), (Function2) new PruningProcessingQueue$processingLoop$2$1$1(pruningProcessingQueue, null));
                    Deferred deferred = (Deferred) objectRef.element;
                    if (deferred != null) {
                        selectImplementation.invoke(deferred.getOnAwait(), new PruningProcessingQueue$processingLoop$2$1$2(objectRef, null));
                    }
                    this.L$0 = coroutineScope;
                    this.L$1 = objectRef;
                    this.label = 1;
                    if (selectImplementation.doSelect(this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    if (!((PruningProcessingQueue) this.this$0).queue.isEmpty()) {
                        Object objFirst2 = ((PruningProcessingQueue) this.this$0).queue.first();
                        r6 = (T) BuildersKt__Builders_commonKt.async$default(coroutineScope, null, null, new PruningProcessingQueue$processingLoop$2$deferred$1(this.this$0, objFirst2, null), 3, null);
                        if (!r6.isCancelled()) {
                        }
                    }
                    if (CoroutineScopeKt.isActive(coroutineScope)) {
                    }
                }
                th = null;
                this.this$0.closeAndReleaseUnprocessedElements(th);
                if (th == null) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object processingLoop(Continuation continuation) {
        return SupervisorKt.supervisorScope(new C02352(this, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void closeAndReleaseUnprocessedElements(Throwable cause) {
        ArrayDeque<T> arrayDeque;
        if (this.channel.close(cause)) {
            Object objMo4806tryReceivePtdJZtk = this.channel.mo4806tryReceivePtdJZtk();
            while (true) {
                boolean zM4818isSuccessimpl = ChannelResult.m4818isSuccessimpl(objMo4806tryReceivePtdJZtk);
                arrayDeque = this.queue;
                if (!zM4818isSuccessimpl) {
                    break;
                }
                arrayDeque.add((T) ChannelResult.m4815getOrThrowimpl(objMo4806tryReceivePtdJZtk));
                objMo4806tryReceivePtdJZtk = this.channel.mo4806tryReceivePtdJZtk();
            }
            if (arrayDeque.isEmpty()) {
                return;
            }
            this.onUnprocessedElements.invoke(CollectionsKt.toMutableList((Collection) this.queue));
            this.queue.clear();
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0005\"\u0004\b\u0001\u0010\u0006*\b\u0012\u0004\u0012\u0002H\u00060\u00052\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, d2 = {"Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "processIn", "Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;", "T", "scope", "Lkotlinx/coroutines/CoroutineScope;", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final <T> PruningProcessingQueue<T> processIn(PruningProcessingQueue<T> pruningProcessingQueue, CoroutineScope coroutineScope) {
            if (!((PruningProcessingQueue) pruningProcessingQueue).started.compareAndSet(false, true)) {
                Segment$$ExternalSyntheticBUOutline1.m848m("PruningProcessingQueue cannot be re-started!");
                return null;
            }
            if (BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new PruningProcessingQueue$Companion$processIn$job$1(pruningProcessingQueue, null), 3, null).isCancelled()) {
                pruningProcessingQueue.closeAndReleaseUnprocessedElements(null);
            }
            return pruningProcessingQueue;
        }
    }
}
