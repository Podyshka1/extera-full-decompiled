package androidx.camera.camera2.pipe.core;

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
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m765c = "androidx.camera.camera2.pipe.core.PruningProcessingQueue$processingLoop$2$deferred$1", m766f = "PruningProcessingQueue.kt", m767i = {}, m768l = {152}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
@SourceDebugExtension({"SMAP\nPruningProcessingQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PruningProcessingQueue.kt\nandroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$deferred$1\n+ 2 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,213:1\n50#2,2:214\n*S KotlinDebug\n*F\n+ 1 PruningProcessingQueue.kt\nandroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$deferred$1\n*L\n151#1:214,2\n*E\n"})
public final class PruningProcessingQueue$processingLoop$2$deferred$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ T $elementToProcess;
    int label;
    final /* synthetic */ PruningProcessingQueue<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PruningProcessingQueue$processingLoop$2$deferred$1(PruningProcessingQueue<T> pruningProcessingQueue, T t, Continuation<? super PruningProcessingQueue$processingLoop$2$deferred$1> continuation) {
        super(2, continuation);
        this.this$0 = pruningProcessingQueue;
        this.$elementToProcess = t;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PruningProcessingQueue$processingLoop$2$deferred$1(this.this$0, this.$elementToProcess, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((PruningProcessingQueue$processingLoop$2$deferred$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Log log = Log.INSTANCE;
            Object obj2 = this.$elementToProcess;
            if (log.getDEBUG_LOGGABLE()) {
                android.util.Log.d("CXCP", "PruningProcessingQueue: Processing " + obj2);
            }
            Function2 function2 = ((PruningProcessingQueue) this.this$0).process;
            T t = this.$elementToProcess;
            this.label = 1;
            if (function2.invoke(t, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
