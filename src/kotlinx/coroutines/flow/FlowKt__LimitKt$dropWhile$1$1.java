package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
public final class FlowKt__LimitKt$dropWhile$1$1<T> implements FlowCollector {
    final /* synthetic */ Ref.BooleanRef $matched;
    final /* synthetic */ Function2<T, Continuation<? super Boolean>, Object> $predicate;
    final /* synthetic */ FlowCollector<T> $this_flow;

    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__LimitKt$dropWhile$1$1(Ref.BooleanRef booleanRef, FlowCollector<? super T> flowCollector, Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        this.$matched = booleanRef;
        this.$this_flow = flowCollector;
        this.$predicate = function2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0055, code lost:
    
        if (r7.emit(r8, r0) == r1) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0082, code lost:
    
        if (r7.emit(r8, r0) == r1) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0088  */
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
    public final Object emit(T t, Continuation<? super Unit> continuation) {
        FlowKt__LimitKt$dropWhile$1$1$emit$1 flowKt__LimitKt$dropWhile$1$1$emit$1;
        if (continuation instanceof FlowKt__LimitKt$dropWhile$1$1$emit$1) {
            flowKt__LimitKt$dropWhile$1$1$emit$1 = (FlowKt__LimitKt$dropWhile$1$1$emit$1) continuation;
            int i = flowKt__LimitKt$dropWhile$1$1$emit$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                flowKt__LimitKt$dropWhile$1$1$emit$1.label = i - Integer.MIN_VALUE;
            } else {
                flowKt__LimitKt$dropWhile$1$1$emit$1 = new FlowKt__LimitKt$dropWhile$1$1$emit$1(this, continuation);
            }
        }
        Object objInvoke = flowKt__LimitKt$dropWhile$1$1$emit$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = flowKt__LimitKt$dropWhile$1$1$emit$1.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objInvoke);
            if (this.$matched.element) {
                FlowCollector<T> flowCollector = this.$this_flow;
                flowKt__LimitKt$dropWhile$1$1$emit$1.label = 1;
            } else {
                Function2<T, Continuation<? super Boolean>, Object> function2 = this.$predicate;
                flowKt__LimitKt$dropWhile$1$1$emit$1.L$0 = this;
                flowKt__LimitKt$dropWhile$1$1$emit$1.L$1 = t;
                flowKt__LimitKt$dropWhile$1$1$emit$1.label = 2;
                objInvoke = function2.invoke(t, flowKt__LimitKt$dropWhile$1$1$emit$1);
                if (objInvoke != coroutine_suspended) {
                    if (!((Boolean) objInvoke).booleanValue()) {
                    }
                }
            }
            return coroutine_suspended;
        }
        if (i2 == 1) {
            ResultKt.throwOnFailure(objInvoke);
            return Unit.INSTANCE;
        }
        if (i2 != 2) {
            if (i2 == 3) {
                ResultKt.throwOnFailure(objInvoke);
                return Unit.INSTANCE;
            }
            Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        t = (T) flowKt__LimitKt$dropWhile$1$1$emit$1.L$1;
        this = (FlowKt__LimitKt$dropWhile$1$1) flowKt__LimitKt$dropWhile$1$1$emit$1.L$0;
        ResultKt.throwOnFailure(objInvoke);
        if (!((Boolean) objInvoke).booleanValue()) {
            return Unit.INSTANCE;
        }
        this.$matched.element = true;
        FlowCollector<T> flowCollector2 = this.$this_flow;
        flowKt__LimitKt$dropWhile$1$1$emit$1.L$0 = null;
        flowKt__LimitKt$dropWhile$1$1$emit$1.L$1 = null;
        flowKt__LimitKt$dropWhile$1$1$emit$1.label = 3;
    }
}
