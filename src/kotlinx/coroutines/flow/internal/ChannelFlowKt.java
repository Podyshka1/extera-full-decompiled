package kotlinx.coroutines.flow.internal;

import com.android.dx.io.Opcodes;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.internal.ThreadContextKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a-\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0004\u0010\u0005\u001aZ\u0010\u000e\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00028\u00012\b\b\u0002\u0010\n\u001a\u00020\t2\"\u0010\r\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f\u0012\u0006\u0012\u0004\u0018\u00010\t0\u000bH\u0080@¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"T", "Lkotlinx/coroutines/flow/FlowCollector;", "Lkotlin/coroutines/CoroutineContext;", "emitContext", "withUndispatchedContextCollector", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/FlowCollector;", "V", "newContext", "value", _UrlKt.FRAGMENT_ENCODE_SET, "countOrElement", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "block", "withContextUndispatched", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m862k = 2, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nChannelFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelFlow.kt\nkotlinx/coroutines/flow/internal/ChannelFlowKt\n+ 2 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,240:1\n103#2,5:241\n*S KotlinDebug\n*F\n+ 1 ChannelFlow.kt\nkotlinx/coroutines/flow/internal/ChannelFlowKt\n*L\n220#1:241,5\n*E\n"})
public abstract class ChannelFlowKt {

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.ChannelFlowKt$withContextUndispatched$1 */
    @Metadata(m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "kotlinx.coroutines.flow.internal.ChannelFlowKt", m873f = "ChannelFlow.kt", m874i = {0, 0, 0, 0, 0, 0, 0, 0, 0}, m875l = {Opcodes.AND_INT_LIT8}, m876m = "withContextUndispatched", m877n = {"newContext", "value", "countOrElement", "block", "context$iv", "countOrElement$iv", "oldValue$iv", "$i$f$withCoroutineContext", "$i$a$-withCoroutineContext-ChannelFlowKt$withContextUndispatched$2"}, m878s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "I$0", "I$1"}, m879v = 1)
    public static final class C24061<T, V> extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        int label;
        /* synthetic */ Object result;

        public C24061(Continuation<? super C24061> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelFlowKt.withContextUndispatched(null, null, null, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> FlowCollector<T> withUndispatchedContextCollector(FlowCollector<? super T> flowCollector, CoroutineContext coroutineContext) {
        return ((flowCollector instanceof SendingCollector) || (flowCollector instanceof NopCollector)) ? flowCollector : new UndispatchedContextCollector(flowCollector, coroutineContext);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T, V> Object withContextUndispatched(CoroutineContext coroutineContext, V v, Object obj, Function2<? super V, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) throws Throwable {
        C24061 c24061;
        Object objUpdateThreadContext;
        Object objWrapWithContinuationImpl;
        if (continuation instanceof C24061) {
            c24061 = (C24061) continuation;
            int i = c24061.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c24061.label = i - Integer.MIN_VALUE;
            } else {
                c24061 = new C24061(continuation);
            }
        }
        Object obj2 = c24061.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c24061.label;
        if (i2 != 0) {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            Object obj3 = c24061.L$6;
            CoroutineContext coroutineContext2 = (CoroutineContext) c24061.L$4;
            try {
                ResultKt.throwOnFailure(obj2);
                objUpdateThreadContext = obj3;
                coroutineContext = coroutineContext2;
                objWrapWithContinuationImpl = obj2;
                ThreadContextKt.restoreThreadContext(coroutineContext, objUpdateThreadContext);
                return objWrapWithContinuationImpl;
            } catch (Throwable th) {
                th = th;
                objUpdateThreadContext = obj3;
                coroutineContext = coroutineContext2;
                ThreadContextKt.restoreThreadContext(coroutineContext, objUpdateThreadContext);
                throw th;
            }
        }
        ResultKt.throwOnFailure(obj2);
        objUpdateThreadContext = ThreadContextKt.updateThreadContext(coroutineContext, obj);
        try {
            c24061.L$0 = coroutineContext;
            c24061.L$1 = v;
            c24061.L$2 = SpillingKt.nullOutSpilledVariable(obj);
            c24061.L$3 = function2;
            c24061.L$4 = coroutineContext;
            c24061.L$5 = SpillingKt.nullOutSpilledVariable(obj);
            c24061.L$6 = objUpdateThreadContext;
            c24061.L$7 = c24061;
            c24061.I$0 = 0;
            c24061.I$1 = 0;
            c24061.label = 1;
            StackFrameContinuation stackFrameContinuation = new StackFrameContinuation(c24061, coroutineContext);
            objWrapWithContinuationImpl = !(function2 instanceof BaseContinuationImpl) ? IntrinsicsKt.wrapWithContinuationImpl(function2, v, stackFrameContinuation) : ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(v, stackFrameContinuation);
            if (objWrapWithContinuationImpl == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(c24061);
            }
            if (objWrapWithContinuationImpl == coroutine_suspended) {
                return coroutine_suspended;
            }
            ThreadContextKt.restoreThreadContext(coroutineContext, objUpdateThreadContext);
            return objWrapWithContinuationImpl;
        } catch (Throwable th2) {
            th = th2;
            ThreadContextKt.restoreThreadContext(coroutineContext, objUpdateThreadContext);
            throw th;
        }
    }

    public static /* synthetic */ Object withContextUndispatched$default(CoroutineContext coroutineContext, Object obj, Object obj2, Function2 function2, Continuation continuation, int i, Object obj3) {
        if ((i & 4) != 0) {
            obj2 = ThreadContextKt.threadContextElements(coroutineContext);
        }
        return withContextUndispatched(coroutineContext, obj, obj2, function2, continuation);
    }
}
