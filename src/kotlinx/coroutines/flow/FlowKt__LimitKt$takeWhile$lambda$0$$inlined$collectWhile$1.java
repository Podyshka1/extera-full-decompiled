package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.internal.AbortFlowException;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0018\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"kotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1", "Lkotlinx/coroutines/flow/FlowCollector;", "value", _UrlKt.FRAGMENT_ENCODE_SET, "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nLimit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1\n+ 2 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n1#1,141:1\n84#2,6:142\n*E\n"})
public final class FlowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1<T> implements FlowCollector<T> {
    final /* synthetic */ Function2 $predicate$inlined;
    final /* synthetic */ FlowCollector $this_flow$inlined;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1$1 */
    @Metadata(m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1", m873f = "Limit.kt", m874i = {0, 0, 0, 0, 1, 1, 1, 1}, m875l = {142, 143}, m876m = "emit", m877n = {"value", "$completion", "value", "$i$a$-collectWhile-FlowKt__LimitKt$takeWhile$1$1", "value", "$completion", "value", "$i$a$-collectWhile-FlowKt__LimitKt$takeWhile$1$1"}, m878s = {"L$0", "L$1", "L$2", "I$0", "L$0", "L$1", "L$2", "I$0"}, m879v = 1)
    public static final class C23911 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public C23911(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1.this.emit(null, this);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0095, code lost:
    
        if (r7.emit(r8, r0) == r1) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object emit(T t, Continuation<? super Unit> continuation) {
        C23911 c23911;
        int i;
        Object obj;
        Continuation continuation2;
        if (continuation instanceof C23911) {
            c23911 = (C23911) continuation;
            int i2 = c23911.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c23911.label = i2 - Integer.MIN_VALUE;
            } else {
                c23911 = new C23911(continuation);
            }
        }
        Object objInvoke = c23911.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = c23911.label;
        if (i3 == 0) {
            ResultKt.throwOnFailure(objInvoke);
            Function2 function2 = this.$predicate$inlined;
            c23911.L$0 = SpillingKt.nullOutSpilledVariable(t);
            c23911.L$1 = SpillingKt.nullOutSpilledVariable(c23911);
            c23911.L$2 = t;
            i = 0;
            c23911.I$0 = 0;
            c23911.label = 1;
            InlineMarker.mark(6);
            objInvoke = function2.invoke(t, c23911);
            InlineMarker.mark(7);
            if (objInvoke != coroutine_suspended) {
                obj = t;
                continuation2 = c23911;
            }
            return coroutine_suspended;
        }
        if (i3 != 1) {
            if (i3 != 2) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(objInvoke);
            return Unit.INSTANCE;
        }
        int i4 = c23911.I$0;
        Object obj2 = c23911.L$2;
        continuation2 = (Continuation) c23911.L$1;
        obj = c23911.L$0;
        ResultKt.throwOnFailure(objInvoke);
        i = i4;
        t = (T) obj2;
        if (!((Boolean) objInvoke).booleanValue()) {
            throw new AbortFlowException(this);
        }
        FlowCollector flowCollector = this.$this_flow$inlined;
        c23911.L$0 = SpillingKt.nullOutSpilledVariable(obj);
        c23911.L$1 = SpillingKt.nullOutSpilledVariable(continuation2);
        c23911.L$2 = SpillingKt.nullOutSpilledVariable(t);
        c23911.I$0 = i;
        c23911.label = 2;
    }

    public FlowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1(Function2 function2, FlowCollector flowCollector) {
        this.$predicate$inlined = function2;
        this.$this_flow$inlined = flowCollector;
    }
}
