package androidx.camera.camera2.pipe.core;

import java.util.Collection;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.ChannelResult;

/* JADX INFO: loaded from: classes3.dex */
public final class ProcessingQueue {
    public static final Companion Companion = new Companion(null);
    private final int capacity;
    private final Channel channel;
    private final Function1 onUnprocessedElements;
    private final Function2 process;
    private final ArrayDeque queue;
    private final AtomicBoolean started;

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.core.ProcessingQueue$processingLoop$1 */
    static final class C02331 extends ContinuationImpl {
        int I$0;
        int label;
        /* synthetic */ Object result;

        C02331(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ProcessingQueue.this.processingLoop(this);
        }
    }

    public ProcessingQueue(int i, Function1 onUnprocessedElements, Function2 process) {
        Intrinsics.checkNotNullParameter(onUnprocessedElements, "onUnprocessedElements");
        Intrinsics.checkNotNullParameter(process, "process");
        this.capacity = i;
        this.onUnprocessedElements = onUnprocessedElements;
        this.process = process;
        this.started = AtomicFU.atomic(false);
        this.channel = ChannelKt.Channel$default(i, null, new Function1() { // from class: androidx.camera.camera2.pipe.core.ProcessingQueue$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ProcessingQueue.channel$lambda$0(this.f$0, obj);
            }
        }, 2, null);
        this.queue = new ArrayDeque();
    }

    public /* synthetic */ ProcessingQueue(int i, Function1 function1, Function2 function2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? Integer.MAX_VALUE : i, (i2 & 2) != 0 ? new Function1() { // from class: androidx.camera.camera2.pipe.core.ProcessingQueue$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ProcessingQueue._init_$lambda$0((List) obj);
            }
        } : function1, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$0(List it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit channel$lambda$0(ProcessingQueue processingQueue, Object obj) {
        processingQueue.queue.add(obj);
        return Unit.INSTANCE;
    }

    public final boolean tryEmit(Object obj) {
        return ChannelResult.m3681isSuccessimpl(this.channel.mo3670trySendJP2dKIU(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0085, code lost:
    
        if (r7.invoke(r5, r0) == r1) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x008e, code lost:
    
        if (r2 == r6.queue.size()) goto L22;
     */
    /* JADX WARN: Path cross not found for [B:22:0x003f, B:26:0x004f], limit reached: 40 */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003f A[Catch: all -> 0x002e, TRY_ENTER, TryCatch #0 {all -> 0x002e, blocks: (B:13:0x002a, B:35:0x0088, B:26:0x004f, B:28:0x0057, B:29:0x005d, B:31:0x0063, B:32:0x0073, B:22:0x003f, B:25:0x004a, B:19:0x0038), top: B:40:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004a A[Catch: all -> 0x002e, TryCatch #0 {all -> 0x002e, blocks: (B:13:0x002a, B:35:0x0088, B:26:0x004f, B:28:0x0057, B:29:0x005d, B:31:0x0063, B:32:0x0073, B:22:0x003f, B:25:0x004a, B:19:0x0038), top: B:40:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0057 A[Catch: all -> 0x002e, TryCatch #0 {all -> 0x002e, blocks: (B:13:0x002a, B:35:0x0088, B:26:0x004f, B:28:0x0057, B:29:0x005d, B:31:0x0063, B:32:0x0073, B:22:0x003f, B:25:0x004a, B:19:0x0038), top: B:40:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x0085 -> B:35:0x0088). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object processingLoop(Continuation continuation) {
        C02331 c02331;
        Object objReceive;
        int size;
        if (continuation instanceof C02331) {
            c02331 = (C02331) continuation;
            int i = c02331.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c02331.label = i - Integer.MIN_VALUE;
            } else {
                c02331 = new C02331(continuation);
            }
        }
        Object obj = c02331.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c02331.label;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                Channel channel = this.channel;
                c02331.label = 1;
                objReceive = channel.receive(c02331);
                if (objReceive == coroutine_suspended) {
                }
            } else {
                if (i2 == 1) {
                    ResultKt.throwOnFailure(obj);
                    this.queue.add(obj);
                    if (!this.queue.isEmpty()) {
                        Channel channel2 = this.channel;
                        c02331.label = 1;
                        objReceive = channel2.receive(c02331);
                        if (objReceive == coroutine_suspended) {
                            this.queue.add(objReceive);
                            if (!this.queue.isEmpty()) {
                            }
                        }
                    } else {
                        Object objMo3669tryReceivePtdJZtk = this.channel.mo3669tryReceivePtdJZtk();
                        while (ChannelResult.m3681isSuccessimpl(objMo3669tryReceivePtdJZtk)) {
                            this.queue.add(ChannelResult.m3678getOrThrowimpl(objMo3669tryReceivePtdJZtk));
                            objMo3669tryReceivePtdJZtk = this.channel.mo3669tryReceivePtdJZtk();
                        }
                        size = this.queue.size();
                        Function2 function2 = this.process;
                        ArrayDeque arrayDeque = this.queue;
                        c02331.I$0 = size;
                        c02331.label = 2;
                    }
                    return coroutine_suspended;
                }
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                size = c02331.I$0;
                ResultKt.throwOnFailure(obj);
            }
        } catch (Throwable th) {
            releaseUnprocessedElements(th);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void releaseUnprocessedElements(Throwable th) {
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

        public final ProcessingQueue processIn(ProcessingQueue processingQueue, CoroutineScope scope) {
            Intrinsics.checkNotNullParameter(processingQueue, "<this>");
            Intrinsics.checkNotNullParameter(scope, "scope");
            if (!processingQueue.started.compareAndSet(false, true)) {
                throw new IllegalStateException("ProcessingQueue cannot be re-started!");
            }
            if (BuildersKt__Builders_commonKt.launch$default(scope, null, null, new ProcessingQueue$Companion$processIn$job$1(processingQueue, null), 3, null).isCancelled()) {
                processingQueue.releaseUnprocessedElements(null);
            }
            return processingQueue;
        }
    }
}
