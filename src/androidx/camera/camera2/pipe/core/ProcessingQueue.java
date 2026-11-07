package androidx.camera.camera2.pipe.core;

import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.ChannelResult;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000 '*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001'BW\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u001a\b\u0002\u0010\b\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u0012(\u0010\f\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00020\t¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u0007H\u0082@¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0013\u001a\u00020\u00072\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00028\u0000¢\u0006\u0004\b\u0017\u0010\u0018R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR&\u0010\b\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00020\u00070\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u001cR6\u0010\f\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u001dR\u0014\u0010\u001f\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u001a\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u001a\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00000$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&¨\u0006("}, d2 = {"Landroidx/camera/camera2/pipe/core/ProcessingQueue;", "T", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "capacity", "Lkotlin/Function1;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "onUnprocessedElements", "Lkotlin/Function2;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/coroutines/Continuation;", "process", "<init>", "(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V", "processingLoop", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "cause", "releaseUnprocessedElements", "(Ljava/lang/Throwable;)V", "element", _UrlKt.FRAGMENT_ENCODE_SET, "tryEmit", "(Ljava/lang/Object;)Z", "I", "getCapacity", "()I", "Lkotlin/jvm/functions/Function1;", "Lkotlin/jvm/functions/Function2;", "Lkotlinx/atomicfu/AtomicBoolean;", "started", "Lkotlinx/atomicfu/AtomicBoolean;", "Lkotlinx/coroutines/channels/Channel;", "channel", "Lkotlinx/coroutines/channels/Channel;", "Lkotlin/collections/ArrayDeque;", "queue", "Lkotlin/collections/ArrayDeque;", "Companion", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nProcessingQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProcessingQueue.kt\nandroidx/camera/camera2/pipe/core/ProcessingQueue\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,174:1\n1#2:175\n*E\n"})
public final class ProcessingQueue<T> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final int capacity;
    private final Channel<T> channel;
    private final Function1<List<? extends T>, Unit> onUnprocessedElements;
    private final Function2<List<T>, Continuation<? super Unit>, Object> process;
    private final ArrayDeque<T> queue;
    private final AtomicBoolean started;

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.core.ProcessingQueue$processingLoop$1 */
    @Metadata(m862k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.camera.camera2.pipe.core.ProcessingQueue", m873f = "ProcessingQueue.kt", m874i = {1}, m875l = {102, 117}, m876m = "processingLoop", m877n = {"size"}, m878s = {"I$0"}, m879v = 1)
    public static final class C02341 extends ContinuationImpl {
        int I$0;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ ProcessingQueue<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C02341(ProcessingQueue<T> processingQueue, Continuation<? super C02341> continuation) {
            super(continuation);
            this.this$0 = processingQueue;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.processingLoop(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ProcessingQueue(int i, Function1<? super List<? extends T>, Unit> function1, Function2<? super List<T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        this.capacity = i;
        this.onUnprocessedElements = function1;
        this.process = function2;
        this.started = AtomicFU.atomic(false);
        this.channel = ChannelKt.Channel$default(i, null, new Function1() { // from class: androidx.camera.camera2.pipe.core.ProcessingQueue$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ProcessingQueue.$r8$lambda$S7l7sqMHhvUaxQ5VH8QW7tCGrXU(this.f$0, obj);
            }
        }, 2, null);
        this.queue = new ArrayDeque<>();
    }

    public /* synthetic */ ProcessingQueue(int i, Function1 function1, Function2 function2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? Integer.MAX_VALUE : i, (i2 & 2) != 0 ? new Function1() { // from class: androidx.camera.camera2.pipe.core.ProcessingQueue$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Unit.INSTANCE;
            }
        } : function1, function2);
    }

    public static Unit $r8$lambda$S7l7sqMHhvUaxQ5VH8QW7tCGrXU(ProcessingQueue processingQueue, Object obj) {
        processingQueue.queue.add(obj);
        return Unit.INSTANCE;
    }

    public final boolean tryEmit(T element) {
        return ChannelResult.m4611isSuccessimpl(this.channel.mo4601trySendJP2dKIU(element));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0082, code lost:
    
        if (r7.invoke(r5, r0) == r1) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x008b, code lost:
    
        if (r2 == r6.queue.size()) goto L22;
     */
    /* JADX WARN: Path cross not found for [B:22:0x003e, B:26:0x004e], limit reached: 41 */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003e A[Catch: all -> 0x002e, TRY_ENTER, TryCatch #0 {all -> 0x002e, blocks: (B:13:0x002a, B:36:0x0085, B:26:0x004e, B:28:0x0056, B:29:0x005c, B:32:0x0064, B:33:0x0072, B:22:0x003e, B:25:0x0049, B:19:0x0037), top: B:41:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0049 A[Catch: all -> 0x002e, TryCatch #0 {all -> 0x002e, blocks: (B:13:0x002a, B:36:0x0085, B:26:0x004e, B:28:0x0056, B:29:0x005c, B:32:0x0064, B:33:0x0072, B:22:0x003e, B:25:0x0049, B:19:0x0037), top: B:41:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0056 A[Catch: all -> 0x002e, TryCatch #0 {all -> 0x002e, blocks: (B:13:0x002a, B:36:0x0085, B:26:0x004e, B:28:0x0056, B:29:0x005c, B:32:0x0064, B:33:0x0072, B:22:0x003e, B:25:0x0049, B:19:0x0037), top: B:41:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x0082 -> B:36:0x0085). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object processingLoop(Continuation<? super Unit> continuation) {
        C02341 c02341;
        Object objReceive;
        ArrayDeque<T> arrayDeque;
        int size;
        if (continuation instanceof C02341) {
            c02341 = (C02341) continuation;
            int i = c02341.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c02341.label = i - Integer.MIN_VALUE;
            } else {
                c02341 = new C02341(this, continuation);
            }
        }
        Object obj = c02341.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c02341.label;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                Channel<T> channel = this.channel;
                c02341.label = 1;
                objReceive = channel.receive(c02341);
                if (objReceive == coroutine_suspended) {
                }
            } else {
                if (i2 == 1) {
                    ResultKt.throwOnFailure(obj);
                    this.queue.add((T) obj);
                    if (!this.queue.isEmpty()) {
                        Channel<T> channel2 = this.channel;
                        c02341.label = 1;
                        objReceive = channel2.receive(c02341);
                        if (objReceive == coroutine_suspended) {
                            this.queue.add((T) objReceive);
                            if (!this.queue.isEmpty()) {
                            }
                        }
                    } else {
                        Object objMo4600tryReceivePtdJZtk = this.channel.mo4600tryReceivePtdJZtk();
                        while (true) {
                            boolean zM4611isSuccessimpl = ChannelResult.m4611isSuccessimpl(objMo4600tryReceivePtdJZtk);
                            arrayDeque = this.queue;
                            if (!zM4611isSuccessimpl) {
                                break;
                            }
                            arrayDeque.add((T) ChannelResult.m4608getOrThrowimpl(objMo4600tryReceivePtdJZtk));
                            objMo4600tryReceivePtdJZtk = this.channel.mo4600tryReceivePtdJZtk();
                        }
                        size = arrayDeque.size();
                        Function2<List<T>, Continuation<? super Unit>, Object> function2 = this.process;
                        ArrayDeque<T> arrayDeque2 = this.queue;
                        c02341.I$0 = size;
                        c02341.label = 2;
                    }
                    return coroutine_suspended;
                }
                if (i2 != 2) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                size = c02341.I$0;
                ResultKt.throwOnFailure(obj);
            }
        } catch (Throwable th) {
            releaseUnprocessedElements(th);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void releaseUnprocessedElements(Throwable cause) {
        ArrayDeque<T> arrayDeque;
        if (this.channel.close(cause)) {
            Object objMo4600tryReceivePtdJZtk = this.channel.mo4600tryReceivePtdJZtk();
            while (true) {
                boolean zM4611isSuccessimpl = ChannelResult.m4611isSuccessimpl(objMo4600tryReceivePtdJZtk);
                arrayDeque = this.queue;
                if (!zM4611isSuccessimpl) {
                    break;
                }
                arrayDeque.add((T) ChannelResult.m4608getOrThrowimpl(objMo4600tryReceivePtdJZtk));
                objMo4600tryReceivePtdJZtk = this.channel.mo4600tryReceivePtdJZtk();
            }
            if (arrayDeque.isEmpty()) {
                return;
            }
            this.onUnprocessedElements.invoke(CollectionsKt.toMutableList((Collection) this.queue));
            this.queue.clear();
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0005\"\u0004\b\u0001\u0010\u0006*\b\u0012\u0004\u0012\u0002H\u00060\u00052\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, d2 = {"Landroidx/camera/camera2/pipe/core/ProcessingQueue$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "processIn", "Landroidx/camera/camera2/pipe/core/ProcessingQueue;", "T", "scope", "Lkotlinx/coroutines/CoroutineScope;", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final <T> ProcessingQueue<T> processIn(ProcessingQueue<T> processingQueue, CoroutineScope coroutineScope) {
            if (!((ProcessingQueue) processingQueue).started.compareAndSet(false, true)) {
                Segment$$ExternalSyntheticBUOutline1.m925m("ProcessingQueue cannot be re-started!");
                return null;
            }
            if (BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new ProcessingQueue$Companion$processIn$job$1(processingQueue, null), 3, null).isCancelled()) {
                processingQueue.releaseUnprocessedElements(null);
            }
            return processingQueue;
        }
    }
}
