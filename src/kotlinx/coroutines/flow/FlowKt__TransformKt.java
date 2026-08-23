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
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u001aG\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\"\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"T", "Lkotlinx/coroutines/flow/Flow;", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "action", "onEach", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;", "kotlinx-coroutines-core"}, m754k = 5, mv = {2, 1, 0}, xi = 48, xs = "kotlinx/coroutines/flow/FlowKt")
@SourceDebugExtension({"SMAP\nTransform.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 3 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,167:1\n17#1:174\n19#1:178\n17#1:179\n19#1:183\n46#2:168\n51#2:170\n46#2:171\n51#2:173\n46#2:175\n51#2:177\n46#2:180\n51#2:182\n46#2:184\n51#2:186\n46#2:187\n51#2:189\n46#2:190\n51#2:192\n46#2:194\n51#2:196\n105#3:169\n105#3:172\n105#3:176\n105#3:181\n105#3:185\n105#3:188\n105#3:191\n105#3:193\n105#3:195\n105#3:197\n105#3:198\n105#3:200\n1#4:199\n*S KotlinDebug\n*F\n+ 1 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n32#1:174\n32#1:178\n37#1:179\n37#1:183\n17#1:168\n17#1:170\n24#1:171\n24#1:173\n32#1:175\n32#1:177\n37#1:180\n37#1:182\n42#1:184\n42#1:186\n49#1:187\n49#1:189\n56#1:190\n56#1:192\n74#1:194\n74#1:196\n17#1:169\n24#1:172\n32#1:176\n37#1:181\n42#1:185\n49#1:188\n56#1:191\n64#1:193\n74#1:195\n101#1:197\n121#1:198\n152#1:200\n*E\n"})
abstract /* synthetic */ class FlowKt__TransformKt {
    public static final <T> Flow<T> onEach(final Flow<? extends T> flow, final Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return new Flow<T>() { // from class: kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1

            /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2 */
            @Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,49:1\n75#2,2:50\n*E\n"})
            public static final class C23292<T> implements FlowCollector {
                final /* synthetic */ Function2 $action$inlined;
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1, reason: invalid class name */
                @Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
                @DebugMetadata(m765c = "kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2", m766f = "Transform.kt", m767i = {0, 0}, m768l = {50, 51}, m769m = "emit", m770n = {"value", "$this$onEach_u24lambda_u248"}, m771s = {"L$0", "L$1"})
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
                        return C23292.this.emit(null, this);
                    }
                }

                public C23292(FlowCollector flowCollector, Function2 function2) {
                    this.$this_unsafeFlow = flowCollector;
                    this.$action$inlined = function2;
                }

                /* JADX WARN: Code restructure failed: missing block: B:21:0x0064, code lost:
                
                    if (r6.emit(r7, r0) == r1) goto L22;
                 */
                /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Object emit(T t, Continuation<? super Unit> continuation) {
                    AnonymousClass1 anonymousClass1;
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
                    Object obj = anonymousClass1.result;
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i2 = anonymousClass1.label;
                    if (i2 == 0) {
                        ResultKt.throwOnFailure(obj);
                        FlowCollector flowCollector2 = this.$this_unsafeFlow;
                        Function2 function2 = this.$action$inlined;
                        anonymousClass1.L$0 = t;
                        anonymousClass1.L$1 = flowCollector2;
                        anonymousClass1.label = 1;
                        InlineMarker.mark(6);
                        Object objInvoke = function2.invoke(t, anonymousClass1);
                        InlineMarker.mark(7);
                        if (objInvoke != coroutine_suspended) {
                            flowCollector = flowCollector2;
                        }
                        return coroutine_suspended;
                    }
                    if (i2 != 1) {
                        if (i2 == 2) {
                            ResultKt.throwOnFailure(obj);
                            return Unit.INSTANCE;
                        }
                        Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    flowCollector = (FlowCollector) anonymousClass1.L$1;
                    t = (T) anonymousClass1.L$0;
                    ResultKt.throwOnFailure(obj);
                    anonymousClass1.L$0 = null;
                    anonymousClass1.L$1 = null;
                    anonymousClass1.label = 2;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector flowCollector, Continuation continuation) {
                Object objCollect = flow.collect(new C23292(flowCollector, function2), continuation);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }
        };
    }
}
