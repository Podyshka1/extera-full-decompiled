package kotlinx.coroutines.flow;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;

/* JADX INFO: loaded from: classes.dex */
abstract /* synthetic */ class FlowKt__TransformKt {
    public static final Flow onEach(final Flow flow, final Function2 function2) {
        return new Flow() { // from class: kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1

            /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2 */
            public static final class C26332 implements FlowCollector {
                final /* synthetic */ Function2 $action$inlined;
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1, reason: invalid class name */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    Object L$1;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return C26332.this.emit(null, this);
                    }
                }

                public C26332(FlowCollector flowCollector, Function2 function2) {
                    this.$this_unsafeFlow = flowCollector;
                    this.$action$inlined = function2;
                }

                /* JADX WARN: Code restructure failed: missing block: B:21:0x0067, code lost:
                
                    if (r6.emit(r2, r0) == r1) goto L22;
                 */
                /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    Object obj2;
                    FlowCollector flowCollector;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i = anonymousClass1.label;
                        if ((i & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.label = i - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    }
                    Object obj3 = anonymousClass1.result;
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i2 = anonymousClass1.label;
                    if (i2 == 0) {
                        ResultKt.throwOnFailure(obj3);
                        FlowCollector flowCollector2 = this.$this_unsafeFlow;
                        Function2 function2 = this.$action$inlined;
                        anonymousClass1.L$0 = obj;
                        anonymousClass1.L$1 = flowCollector2;
                        anonymousClass1.label = 1;
                        InlineMarker.mark(6);
                        Object objInvoke = function2.invoke(obj, anonymousClass1);
                        InlineMarker.mark(7);
                        if (objInvoke != coroutine_suspended) {
                            obj2 = obj;
                            flowCollector = flowCollector2;
                        }
                        return coroutine_suspended;
                    }
                    if (i2 != 1) {
                        if (i2 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj3);
                        return Unit.INSTANCE;
                    }
                    flowCollector = (FlowCollector) anonymousClass1.L$1;
                    obj2 = anonymousClass1.L$0;
                    ResultKt.throwOnFailure(obj3);
                    anonymousClass1.L$0 = null;
                    anonymousClass1.L$1 = null;
                    anonymousClass1.label = 2;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector flowCollector, Continuation continuation) {
                Object objCollect = flow.collect(new C26332(flowCollector, function2), continuation);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }
        };
    }
}
