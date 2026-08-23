package androidx.datastore.core;

import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes.dex */
final class DataStoreImpl$data$1 extends SuspendLambda implements Function2 {
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ DataStoreImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DataStoreImpl$data$1(DataStoreImpl dataStoreImpl, Continuation continuation) {
        super(2, continuation);
        this.this$0 = dataStoreImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        DataStoreImpl$data$1 dataStoreImpl$data$1 = new DataStoreImpl$data$1(this.this$0, continuation);
        dataStoreImpl$data$1.L$0 = obj;
        return dataStoreImpl$data$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(FlowCollector flowCollector, Continuation continuation) {
        return ((DataStoreImpl$data$1) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00bb, code lost:
    
        if (kotlinx.coroutines.flow.FlowKt.emitAll(r1, r9, r8) == r0) goto L33;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) throws Throwable {
        FlowCollector flowCollector;
        State state;
        FlowCollector flowCollector2;
        State state2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            FlowCollector flowCollector3 = (FlowCollector) this.L$0;
            DataStoreImpl dataStoreImpl = this.this$0;
            this.L$0 = flowCollector3;
            this.label = 1;
            Object state3 = dataStoreImpl.readState(false, this);
            if (state3 != coroutine_suspended) {
                flowCollector = flowCollector3;
                obj = state3;
            }
            return coroutine_suspended;
        }
        if (i == 1) {
            flowCollector = (FlowCollector) this.L$0;
            ResultKt.throwOnFailure(obj);
        } else {
            if (i != 2) {
                if (i != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            state2 = (State) this.L$1;
            flowCollector2 = (FlowCollector) this.L$0;
            ResultKt.throwOnFailure(obj);
            state = state2;
            flowCollector = flowCollector2;
            final Flow flowDropWhile = FlowKt.dropWhile(FlowKt.takeWhile(FlowKt.onStart(this.this$0.inMemoryCache.getFlow(), new C04951(this.this$0, null)), new C04962(null)), new C04973(state, null));
            Flow flowOnCompletion = FlowKt.onCompletion(new Flow() { // from class: androidx.datastore.core.DataStoreImpl$data$1$invokeSuspend$$inlined$map$1
                @Override // kotlinx.coroutines.flow.Flow
                public Object collect(FlowCollector flowCollector4, Continuation continuation) {
                    Object objCollect = flowDropWhile.collect(new C04992(flowCollector4), continuation);
                    return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$data$1$invokeSuspend$$inlined$map$1$2 */
                public static final class C04992 implements FlowCollector {
                    final /* synthetic */ FlowCollector $this_unsafeFlow;

                    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$data$1$invokeSuspend$$inlined$map$1$2$1, reason: invalid class name */
                    public static final class AnonymousClass1 extends ContinuationImpl {
                        int label;
                        /* synthetic */ Object result;

                        public AnonymousClass1(Continuation continuation) {
                            super(continuation);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            this.result = obj;
                            this.label |= Integer.MIN_VALUE;
                            return C04992.this.emit(null, this);
                        }
                    }

                    public C04992(FlowCollector flowCollector) {
                        this.$this_unsafeFlow = flowCollector;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final Object emit(Object obj, Continuation continuation) throws Throwable {
                        AnonymousClass1 anonymousClass1;
                        if (continuation instanceof AnonymousClass1) {
                            anonymousClass1 = (AnonymousClass1) continuation;
                            int i = anonymousClass1.label;
                            if ((i & Integer.MIN_VALUE) != 0) {
                                anonymousClass1.label = i - Integer.MIN_VALUE;
                            } else {
                                anonymousClass1 = new AnonymousClass1(continuation);
                            }
                        }
                        Object obj2 = anonymousClass1.result;
                        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        int i2 = anonymousClass1.label;
                        if (i2 == 0) {
                            ResultKt.throwOnFailure(obj2);
                            FlowCollector flowCollector = this.$this_unsafeFlow;
                            State state = (State) obj;
                            if (state instanceof ReadException) {
                                throw ((ReadException) state).getReadException();
                            }
                            if (state instanceof Data) {
                                Object value = ((Data) state).getValue();
                                anonymousClass1.label = 1;
                                if (flowCollector.emit(value, anonymousClass1) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                            } else {
                                if (state instanceof Final ? true : state instanceof UnInitialized) {
                                    throw new IllegalStateException("This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542");
                                }
                                throw new NoWhenBranchMatchedException();
                            }
                        } else {
                            if (i2 != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ResultKt.throwOnFailure(obj2);
                        }
                        return Unit.INSTANCE;
                    }
                }
            }, new C04985(this.this$0, null));
            this.L$0 = null;
            this.L$1 = null;
            this.label = 3;
        }
        state = (State) obj;
        if (state instanceof Data) {
            Object value = ((Data) state).getValue();
            this.L$0 = flowCollector;
            this.L$1 = state;
            this.label = 2;
            if (flowCollector.emit(value, this) != coroutine_suspended) {
                flowCollector2 = flowCollector;
                state2 = state;
                state = state2;
                flowCollector = flowCollector2;
                final Flow flowDropWhile2 = FlowKt.dropWhile(FlowKt.takeWhile(FlowKt.onStart(this.this$0.inMemoryCache.getFlow(), new C04951(this.this$0, null)), new C04962(null)), new C04973(state, null));
                Flow flowOnCompletion2 = FlowKt.onCompletion(new Flow() { // from class: androidx.datastore.core.DataStoreImpl$data$1$invokeSuspend$$inlined$map$1
                    @Override // kotlinx.coroutines.flow.Flow
                    public Object collect(FlowCollector flowCollector4, Continuation continuation) {
                        Object objCollect = flowDropWhile2.collect(new C04992(flowCollector4), continuation);
                        return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$data$1$invokeSuspend$$inlined$map$1$2 */
                    public static final class C04992 implements FlowCollector {
                        final /* synthetic */ FlowCollector $this_unsafeFlow;

                        /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$data$1$invokeSuspend$$inlined$map$1$2$1, reason: invalid class name */
                        public static final class AnonymousClass1 extends ContinuationImpl {
                            int label;
                            /* synthetic */ Object result;

                            public AnonymousClass1(Continuation continuation) {
                                super(continuation);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object invokeSuspend(Object obj) {
                                this.result = obj;
                                this.label |= Integer.MIN_VALUE;
                                return C04992.this.emit(null, this);
                            }
                        }

                        public C04992(FlowCollector flowCollector) {
                            this.$this_unsafeFlow = flowCollector;
                        }

                        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                        */
                        public final Object emit(Object obj, Continuation continuation) throws Throwable {
                            AnonymousClass1 anonymousClass1;
                            if (continuation instanceof AnonymousClass1) {
                                anonymousClass1 = (AnonymousClass1) continuation;
                                int i = anonymousClass1.label;
                                if ((i & Integer.MIN_VALUE) != 0) {
                                    anonymousClass1.label = i - Integer.MIN_VALUE;
                                } else {
                                    anonymousClass1 = new AnonymousClass1(continuation);
                                }
                            }
                            Object obj2 = anonymousClass1.result;
                            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                            int i2 = anonymousClass1.label;
                            if (i2 == 0) {
                                ResultKt.throwOnFailure(obj2);
                                FlowCollector flowCollector = this.$this_unsafeFlow;
                                State state = (State) obj;
                                if (state instanceof ReadException) {
                                    throw ((ReadException) state).getReadException();
                                }
                                if (state instanceof Data) {
                                    Object value = ((Data) state).getValue();
                                    anonymousClass1.label = 1;
                                    if (flowCollector.emit(value, anonymousClass1) == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                } else {
                                    if (state instanceof Final ? true : state instanceof UnInitialized) {
                                        throw new IllegalStateException("This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542");
                                    }
                                    throw new NoWhenBranchMatchedException();
                                }
                            } else {
                                if (i2 != 1) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                ResultKt.throwOnFailure(obj2);
                            }
                            return Unit.INSTANCE;
                        }
                    }
                }, new C04985(this.this$0, null));
                this.L$0 = null;
                this.L$1 = null;
                this.label = 3;
            }
            return coroutine_suspended;
        }
        if (state instanceof UnInitialized) {
            throw new IllegalStateException("This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542");
        }
        if (state instanceof ReadException) {
            throw ((ReadException) state).getReadException();
        }
        if (state instanceof Final) {
            return Unit.INSTANCE;
        }
        final Flow flowDropWhile22 = FlowKt.dropWhile(FlowKt.takeWhile(FlowKt.onStart(this.this$0.inMemoryCache.getFlow(), new C04951(this.this$0, null)), new C04962(null)), new C04973(state, null));
        Flow flowOnCompletion22 = FlowKt.onCompletion(new Flow() { // from class: androidx.datastore.core.DataStoreImpl$data$1$invokeSuspend$$inlined$map$1
            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector flowCollector4, Continuation continuation) {
                Object objCollect = flowDropWhile22.collect(new C04992(flowCollector4), continuation);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$data$1$invokeSuspend$$inlined$map$1$2 */
            public static final class C04992 implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$data$1$invokeSuspend$$inlined$map$1$2$1, reason: invalid class name */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return C04992.this.emit(null, this);
                    }
                }

                public C04992(FlowCollector flowCollector) {
                    this.$this_unsafeFlow = flowCollector;
                }

                /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Object emit(Object obj, Continuation continuation) throws Throwable {
                    AnonymousClass1 anonymousClass1;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i = anonymousClass1.label;
                        if ((i & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.label = i - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    }
                    Object obj2 = anonymousClass1.result;
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i2 = anonymousClass1.label;
                    if (i2 == 0) {
                        ResultKt.throwOnFailure(obj2);
                        FlowCollector flowCollector = this.$this_unsafeFlow;
                        State state = (State) obj;
                        if (state instanceof ReadException) {
                            throw ((ReadException) state).getReadException();
                        }
                        if (state instanceof Data) {
                            Object value = ((Data) state).getValue();
                            anonymousClass1.label = 1;
                            if (flowCollector.emit(value, anonymousClass1) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        } else {
                            if (state instanceof Final ? true : state instanceof UnInitialized) {
                                throw new IllegalStateException("This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542");
                            }
                            throw new NoWhenBranchMatchedException();
                        }
                    } else {
                        if (i2 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj2);
                    }
                    return Unit.INSTANCE;
                }
            }
        }, new C04985(this.this$0, null));
        this.L$0 = null;
        this.L$1 = null;
        this.label = 3;
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$data$1$1 */
    static final class C04951 extends SuspendLambda implements Function2 {
        int label;
        final /* synthetic */ DataStoreImpl this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C04951(DataStoreImpl dataStoreImpl, Continuation continuation) {
            super(2, continuation);
            this.this$0 = dataStoreImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new C04951(this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(FlowCollector flowCollector, Continuation continuation) {
            return ((C04951) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                DataStoreImpl dataStoreImpl = this.this$0;
                this.label = 1;
                if (dataStoreImpl.incrementCollector(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$data$1$2 */
    static final class C04962 extends SuspendLambda implements Function2 {
        /* synthetic */ Object L$0;
        int label;

        C04962(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            C04962 c04962 = new C04962(continuation);
            c04962.L$0 = obj;
            return c04962;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(State state, Continuation continuation) {
            return ((C04962) create(state, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Boxing.boxBoolean(!(((State) this.L$0) instanceof Final));
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$data$1$3 */
    static final class C04973 extends SuspendLambda implements Function2 {
        final /* synthetic */ State $startState;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C04973(State state, Continuation continuation) {
            super(2, continuation);
            this.$startState = state;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            C04973 c04973 = new C04973(this.$startState, continuation);
            c04973.L$0 = obj;
            return c04973;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(State state, Continuation continuation) {
            return ((C04973) create(state, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            State state = (State) this.L$0;
            return Boxing.boxBoolean((state instanceof Data) && state.getVersion() <= this.$startState.getVersion());
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$data$1$5 */
    static final class C04985 extends SuspendLambda implements Function3 {
        int label;
        final /* synthetic */ DataStoreImpl this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C04985(DataStoreImpl dataStoreImpl, Continuation continuation) {
            super(3, continuation);
            this.this$0 = dataStoreImpl;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(FlowCollector flowCollector, Throwable th, Continuation continuation) {
            return new C04985(this.this$0, continuation).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                DataStoreImpl dataStoreImpl = this.this$0;
                this.label = 1;
                if (dataStoreImpl.decrementCollector(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }
}
