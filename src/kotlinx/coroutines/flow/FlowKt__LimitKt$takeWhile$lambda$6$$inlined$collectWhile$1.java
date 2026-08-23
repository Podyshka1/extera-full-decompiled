package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.internal.AbortFlowException;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0018\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"kotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1", "Lkotlinx/coroutines/flow/FlowCollector;", "value", _UrlKt.FRAGMENT_ENCODE_SET, "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nLimit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1\n+ 2 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n1#1,131:1\n84#2,6:132\n*E\n"})
public final class FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1<T> implements FlowCollector<T> {
    final /* synthetic */ Function2 $predicate$inlined;
    final /* synthetic */ FlowCollector $this_flow$inlined;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1$1 */
    @Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1", m766f = "Limit.kt", m767i = {0, 0, 1}, m768l = {132, 133}, m769m = "emit", m770n = {"this", "value", "this"}, m771s = {"L$0", "L$1", "L$0"})
    public static final class C23211 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C23211(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1.this.emit(null, this);
        }
    }

    public FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1(Function2 function2, FlowCollector flowCollector) {
        this.$predicate$inlined = function2;
        this.$this_flow$inlined = flowCollector;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x006f, code lost:
    
        if (r8.emit(r7, r0) == r1) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0078  */
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
        C23211 c23211;
        if (continuation instanceof C23211) {
            c23211 = (C23211) continuation;
            int i = c23211.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c23211.label = i - Integer.MIN_VALUE;
            } else {
                c23211 = new C23211(continuation);
            }
        }
        Object objInvoke = c23211.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c23211.label;
        boolean z = true;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objInvoke);
            Function2 function2 = this.$predicate$inlined;
            c23211.L$0 = this;
            c23211.L$1 = t;
            c23211.label = 1;
            InlineMarker.mark(6);
            objInvoke = function2.invoke(t, c23211);
            InlineMarker.mark(7);
            if (objInvoke != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            this = (FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1) c23211.L$0;
            ResultKt.throwOnFailure(objInvoke);
            if (z) {
                throw new AbortFlowException(this);
            }
            return Unit.INSTANCE;
        }
        t = (T) c23211.L$1;
        this = (FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1) c23211.L$0;
        ResultKt.throwOnFailure(objInvoke);
        if (((Boolean) objInvoke).booleanValue()) {
            FlowCollector flowCollector = this.$this_flow$inlined;
            c23211.L$0 = this;
            c23211.L$1 = null;
            c23211.label = 2;
        } else {
            z = false;
        }
        if (z) {
        }
    }
}
