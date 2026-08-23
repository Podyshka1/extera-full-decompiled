package kotlin.coroutines.intrinsics;

import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.ResultKt;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.RestrictedContinuationImpl;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\t\u001aB\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0004\b\u0000\u0010\u0002*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u0087\u0088\u0004ø\u0001\u0000¢\u0006\u0002\u0010\u0006\u001a?\u0010\u0007\u001a\u0004\u0018\u00010\u0001\"\u0004\b\u0000\u0010\u0002*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u0081\u0080\u0004¢\u0006\u0002\u0010\u0006\u001a[\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0004\b\u0000\u0010\b\"\u0004\b\u0001\u0010\u0002*#\b\u0001\u0012\u0004\u0012\u0002H\b\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00010\t¢\u0006\u0002\b\n2\u0006\u0010\u000b\u001a\u0002H\b2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u0087\u0088\u0004ø\u0001\u0000¢\u0006\u0002\u0010\f\u001aX\u0010\u0007\u001a\u0004\u0018\u00010\u0001\"\u0004\b\u0000\u0010\b\"\u0004\b\u0001\u0010\u0002*#\b\u0001\u0012\u0004\u0012\u0002H\b\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00010\t¢\u0006\u0002\b\n2\u0006\u0010\u000b\u001a\u0002H\b2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u0081\u0080\u0004¢\u0006\u0002\u0010\f\u001ao\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0004\b\u0000\u0010\b\"\u0004\b\u0001\u0010\r\"\u0004\b\u0002\u0010\u0002*)\b\u0001\u0012\u0004\u0012\u0002H\b\u0012\u0004\u0012\u0002H\r\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000e¢\u0006\u0002\b\n2\u0006\u0010\u000b\u001a\u0002H\b2\u0006\u0010\u000f\u001a\u0002H\r2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u0081\u0088\u0004ø\u0001\u0000¢\u0006\u0002\u0010\u0010\u001al\u0010\u0007\u001a\u0004\u0018\u00010\u0001\"\u0004\b\u0000\u0010\b\"\u0004\b\u0001\u0010\r\"\u0004\b\u0002\u0010\u0002*)\b\u0001\u0012\u0004\u0012\u0002H\b\u0012\u0004\u0012\u0002H\r\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000e¢\u0006\u0002\b\n2\u0006\u0010\u000b\u001a\u0002H\b2\u0006\u0010\u000f\u001a\u0002H\r2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u0081\u0080\u0004¢\u0006\u0002\u0010\u0010\u001aC\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u0004\"\u0004\b\u0000\u0010\u0002*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0013\u001a\\\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u0004\"\u0004\b\u0000\u0010\b\"\u0004\b\u0001\u0010\u0002*#\b\u0001\u0012\u0004\u0012\u0002H\b\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00010\t¢\u0006\u0002\b\n2\u0006\u0010\u000b\u001a\u0002H\b2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0014\u001a \u0010\u0015\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u0087\u0080\u0004\u001aG\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00120\u0004\"\u0004\b\u0000\u0010\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00042\u001c\b\u0004\u0010\u0017\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0003H\u0083\u0088\u0004¢\u0006\u0002\b\u0018\u001a)\u0010\u0019\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004\"\u0004\b\u0000\u0010\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u0082\u0080\u0004¢\u0006\u0002\b\u001a\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001b"}, d2 = {"startCoroutineUninterceptedOrReturn", _UrlKt.FRAGMENT_ENCODE_SET, "T", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "completion", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "wrapWithContinuationImpl", "R", "Lkotlin/Function2;", "Lkotlin/ExtensionFunctionType;", "receiver", "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "P", "Lkotlin/Function3;", "param", "(Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "createCoroutineUnintercepted", _UrlKt.FRAGMENT_ENCODE_SET, "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "intercepted", "createCoroutineFromSuspendFunction", "block", "createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt", "createSimpleCoroutineForSuspendFunction", "createSimpleCoroutineForSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt", "kotlin-stdlib"}, m754k = 5, mv = {2, 3, 0}, xi = 49, xs = "kotlin/coroutines/intrinsics/IntrinsicsKt")
@SourceDebugExtension({"SMAP\nIntrinsicsJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntrinsicsJvm.kt\nkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt\n*L\n1#1,270:1\n204#1,4:271\n225#1:275\n204#1,4:276\n225#1:280\n*S KotlinDebug\n*F\n+ 1 IntrinsicsJvm.kt\nkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt\n*L\n130#1:271,4\n130#1:275\n165#1:276,4\n165#1:280\n*E\n"})
public class IntrinsicsKt__IntrinsicsJvmKt {
    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <T> Object startCoroutineUninterceptedOrReturn(Function1<? super Continuation<? super T>, ? extends Object> function1, Continuation<? super T> continuation) {
        return !(function1 instanceof BaseContinuationImpl) ? wrapWithContinuationImpl(function1, continuation) : ((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function1, 1)).invoke(continuation);
    }

    @PublishedApi
    public static final <T> Object wrapWithContinuationImpl(Function1<? super Continuation<? super T>, ? extends Object> function1, Continuation<? super T> continuation) {
        return ((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function1, 1)).invoke(m764xca667f36(DebugProbesKt.probeCoroutineCreated(continuation)));
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <R, T> Object startCoroutineUninterceptedOrReturn(Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2, R r, Continuation<? super T> continuation) {
        return !(function2 instanceof BaseContinuationImpl) ? wrapWithContinuationImpl(function2, r, continuation) : ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(r, continuation);
    }

    @PublishedApi
    public static <R, T> Object wrapWithContinuationImpl(Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2, R r, Continuation<? super T> continuation) {
        return ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(r, m764xca667f36(DebugProbesKt.probeCoroutineCreated(continuation)));
    }

    @InlineOnly
    private static final <R, P, T> Object startCoroutineUninterceptedOrReturn(Function3<? super R, ? super P, ? super Continuation<? super T>, ? extends Object> function3, R r, P p, Continuation<? super T> continuation) {
        return !(function3 instanceof BaseContinuationImpl) ? wrapWithContinuationImpl(function3, r, p, continuation) : ((Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function3, 3)).invoke(r, p, continuation);
    }

    @PublishedApi
    public static <R, P, T> Object wrapWithContinuationImpl(Function3<? super R, ? super P, ? super Continuation<? super T>, ? extends Object> function3, R r, P p, Continuation<? super T> continuation) {
        return ((Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function3, 3)).invoke(r, p, m764xca667f36(DebugProbesKt.probeCoroutineCreated(continuation)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "1.3")
    public static <T> Continuation<Unit> createCoroutineUnintercepted(final Function1<? super Continuation<? super T>, ? extends Object> function1, Continuation<? super T> continuation) {
        final Continuation<?> continuationProbeCoroutineCreated = DebugProbesKt.probeCoroutineCreated(continuation);
        if (function1 instanceof BaseContinuationImpl) {
            return ((BaseContinuationImpl) function1).create(continuationProbeCoroutineCreated);
        }
        final CoroutineContext context = continuationProbeCoroutineCreated.get$context();
        if (context == EmptyCoroutineContext.INSTANCE) {
            return new RestrictedContinuationImpl(continuationProbeCoroutineCreated) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$1
                private int label;

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public Object invokeSuspend(Object result) {
                    int i = this.label;
                    if (i == 0) {
                        this.label = 1;
                        ResultKt.throwOnFailure(result);
                        return ((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function1, 1)).invoke(this);
                    }
                    if (i == 1) {
                        this.label = 2;
                        ResultKt.throwOnFailure(result);
                        return result;
                    }
                    Segment$$ExternalSyntheticBUOutline1.m848m("This coroutine had already completed");
                    return null;
                }
            };
        }
        return new ContinuationImpl(continuationProbeCoroutineCreated, context) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$2
            private int label;

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public Object invokeSuspend(Object result) {
                int i = this.label;
                if (i == 0) {
                    this.label = 1;
                    ResultKt.throwOnFailure(result);
                    return ((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function1, 1)).invoke(this);
                }
                if (i == 1) {
                    this.label = 2;
                    ResultKt.throwOnFailure(result);
                    return result;
                }
                Segment$$ExternalSyntheticBUOutline1.m848m("This coroutine had already completed");
                return null;
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "1.3")
    public static <R, T> Continuation<Unit> createCoroutineUnintercepted(final Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2, final R r, Continuation<? super T> continuation) {
        final Continuation<?> continuationProbeCoroutineCreated = DebugProbesKt.probeCoroutineCreated(continuation);
        if (function2 instanceof BaseContinuationImpl) {
            return ((BaseContinuationImpl) function2).create(r, continuationProbeCoroutineCreated);
        }
        final CoroutineContext context = continuationProbeCoroutineCreated.get$context();
        if (context == EmptyCoroutineContext.INSTANCE) {
            return new RestrictedContinuationImpl(continuationProbeCoroutineCreated) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3
                private int label;

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public Object invokeSuspend(Object result) {
                    int i = this.label;
                    if (i == 0) {
                        this.label = 1;
                        ResultKt.throwOnFailure(result);
                        return ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(r, this);
                    }
                    if (i == 1) {
                        this.label = 2;
                        ResultKt.throwOnFailure(result);
                        return result;
                    }
                    Segment$$ExternalSyntheticBUOutline1.m848m("This coroutine had already completed");
                    return null;
                }
            };
        }
        return new ContinuationImpl(continuationProbeCoroutineCreated, context) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4
            private int label;

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public Object invokeSuspend(Object result) {
                int i = this.label;
                if (i == 0) {
                    this.label = 1;
                    ResultKt.throwOnFailure(result);
                    return ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(r, this);
                }
                if (i == 1) {
                    this.label = 2;
                    ResultKt.throwOnFailure(result);
                    return result;
                }
                Segment$$ExternalSyntheticBUOutline1.m848m("This coroutine had already completed");
                return null;
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "1.3")
    public static <T> Continuation<T> intercepted(Continuation<? super T> continuation) {
        Continuation<T> continuation2;
        ContinuationImpl continuationImpl = continuation instanceof ContinuationImpl ? (ContinuationImpl) continuation : null;
        return (continuationImpl == null || (continuation2 = (Continuation<T>) continuationImpl.intercepted()) == null) ? continuation : continuation2;
    }

    @SinceKotlin(version = "1.3")
    private static final <T> Continuation<Unit> createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt(final Continuation<? super T> continuation, final Function1<? super Continuation<? super T>, ? extends Object> function1) {
        final CoroutineContext context = continuation.get$context();
        if (context == EmptyCoroutineContext.INSTANCE) {
            return new RestrictedContinuationImpl(continuation) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$1
                private int label;

                /* JADX WARN: Type inference incomplete: some casts might be missing */
                /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
                    jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$1 for r2v2 'this'  java.lang.Object
                    	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
                    	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
                    	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
                    	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
                    	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
                    */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public java.lang.Object invokeSuspend(java.lang.Object r3) {
                    /*
                        r2 = this;
                        int r0 = r2.label
                        r1 = 1
                        if (r0 == 0) goto L15
                        if (r0 != r1) goto Le
                        r0 = 2
                        r2.label = r0
                        kotlin.ResultKt.throwOnFailure(r3)
                        return r3
                    Le:
                        java.lang.String r2 = "This coroutine had already completed"
                        okio.Segment$$ExternalSyntheticBUOutline1.m848m(r2)
                        r2 = 0
                        return r2
                    L15:
                        r2.label = r1
                        kotlin.ResultKt.throwOnFailure(r3)
                        kotlin.jvm.functions.Function1<kotlin.coroutines.Continuation<? super T>, java.lang.Object> r3 = r2
                        java.lang.Object r2 = r3.invoke(r2)
                        return r2
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlin.coroutines.intrinsics.C2236x96e8297a.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            };
        }
        return new ContinuationImpl(continuation, context) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2
            private int label;

            /* JADX WARN: Type inference incomplete: some casts might be missing */
            /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
                jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2 for r2v2 'this'  java.lang.Object
                	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
                	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
                	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
                	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
                	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
                */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public java.lang.Object invokeSuspend(java.lang.Object r3) {
                /*
                    r2 = this;
                    int r0 = r2.label
                    r1 = 1
                    if (r0 == 0) goto L15
                    if (r0 != r1) goto Le
                    r0 = 2
                    r2.label = r0
                    kotlin.ResultKt.throwOnFailure(r3)
                    return r3
                Le:
                    java.lang.String r2 = "This coroutine had already completed"
                    okio.Segment$$ExternalSyntheticBUOutline1.m848m(r2)
                    r2 = 0
                    return r2
                L15:
                    r2.label = r1
                    kotlin.ResultKt.throwOnFailure(r3)
                    kotlin.jvm.functions.Function1<kotlin.coroutines.Continuation<? super T>, java.lang.Object> r3 = r3
                    java.lang.Object r2 = r3.invoke(r2)
                    return r2
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.coroutines.intrinsics.C2237x96e8297b.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        };
    }

    /* JADX INFO: renamed from: createSimpleCoroutineForSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt */
    private static final <T> Continuation<T> m764xca667f36(final Continuation<? super T> continuation) {
        final CoroutineContext context = continuation.get$context();
        if (context == EmptyCoroutineContext.INSTANCE) {
            return new RestrictedContinuationImpl(continuation) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$1
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public Object invokeSuspend(Object result) {
                    ResultKt.throwOnFailure(result);
                    return result;
                }
            };
        }
        return new ContinuationImpl(continuation, context) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$2
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public Object invokeSuspend(Object result) {
                ResultKt.throwOnFailure(result);
                return result;
            }
        };
    }
}
