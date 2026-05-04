package androidx.datastore.core;

import androidx.datastore.core.Message;
import androidx.datastore.core.UpdatingDataContextElement;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.ExceptionsKt;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class DataStoreImpl implements DataStore {
    public static final Companion Companion = new Companion(null);
    private int collectorCounter;
    private Job collectorJob;
    private final Mutex collectorMutex;
    private final Lazy coordinator$delegate;
    private final CorruptionHandler corruptionHandler;
    private final Flow data;
    private final DataStoreInMemoryCache inMemoryCache;
    private final InitDataStore readAndInit;
    private final CoroutineScope scope;
    private final Storage storage;
    private final Lazy storageConnectionDelegate;
    private final SimpleActor writeActor;

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$decrementCollector$1 */
    /* JADX INFO: loaded from: classes4.dex */
    static final class C05001 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C05001(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DataStoreImpl.this.decrementCollector(this);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$handleUpdate$1 */
    static final class C05021 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C05021(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DataStoreImpl.this.handleUpdate(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$incrementCollector$1 */
    static final class C05031 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C05031(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DataStoreImpl.this.incrementCollector(this);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1 */
    static final class C05051 extends ContinuationImpl {
        int I$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C05051(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DataStoreImpl.this.readAndInitOrPropagateAndThrowFailure(this);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$1 */
    static final class C05061 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        C05061(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DataStoreImpl.this.readDataAndUpdateCache(false, this);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$readDataOrHandleCorruption$1 */
    static final class C05091 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        C05091(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DataStoreImpl.this.readDataOrHandleCorruption(false, this);
        }
    }

    public DataStoreImpl(Storage storage, List initTasksList, CorruptionHandler corruptionHandler, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(initTasksList, "initTasksList");
        Intrinsics.checkNotNullParameter(corruptionHandler, "corruptionHandler");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.storage = storage;
        this.corruptionHandler = corruptionHandler;
        this.scope = scope;
        this.data = FlowKt.flow(new DataStoreImpl$data$1(this, null));
        this.collectorMutex = MutexKt.Mutex$default(false, 1, null);
        this.inMemoryCache = new DataStoreInMemoryCache();
        this.readAndInit = new InitDataStore(this, initTasksList);
        this.storageConnectionDelegate = LazyKt.lazy(new Function0() { // from class: androidx.datastore.core.DataStoreImpl$storageConnectionDelegate$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final StorageConnection invoke() {
                return this.this$0.storage.createConnection();
            }
        });
        this.coordinator$delegate = LazyKt.lazy(new Function0() { // from class: androidx.datastore.core.DataStoreImpl$coordinator$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final InterProcessCoordinator invoke() {
                return this.this$0.getStorageConnection$datastore_core_release().getCoordinator();
            }
        });
        this.writeActor = new SimpleActor(scope, new Function1() { // from class: androidx.datastore.core.DataStoreImpl$writeActor$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Throwable) obj);
                return Unit.INSTANCE;
            }

            public final void invoke(Throwable th) {
                if (th != null) {
                    this.this$0.inMemoryCache.tryUpdate(new Final(th));
                }
                if (this.this$0.storageConnectionDelegate.isInitialized()) {
                    this.this$0.getStorageConnection$datastore_core_release().close();
                }
            }
        }, new Function2() { // from class: androidx.datastore.core.DataStoreImpl$writeActor$2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                invoke((Message.Update) obj, (Throwable) obj2);
                return Unit.INSTANCE;
            }

            public final void invoke(Message.Update msg, Throwable th) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                CompletableDeferred ack = msg.getAck();
                if (th == null) {
                    th = new CancellationException("DataStore scope was cancelled before updateData could complete");
                }
                ack.completeExceptionally(th);
            }
        }, new DataStoreImpl$writeActor$3(this, null));
    }

    @Override // androidx.datastore.core.DataStore
    public Flow getData() {
        return this.data;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object incrementCollector(Continuation continuation) {
        C05031 c05031;
        DataStoreImpl dataStoreImpl;
        Mutex mutex;
        if (continuation instanceof C05031) {
            c05031 = (C05031) continuation;
            int i = c05031.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c05031.label = i - Integer.MIN_VALUE;
            } else {
                c05031 = new C05031(continuation);
            }
        }
        Object obj = c05031.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c05031.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            Mutex mutex2 = this.collectorMutex;
            c05031.L$0 = this;
            c05031.L$1 = mutex2;
            c05031.label = 1;
            if (mutex2.lock(null, c05031) == coroutine_suspended) {
                return coroutine_suspended;
            }
            dataStoreImpl = this;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = (Mutex) c05031.L$1;
            dataStoreImpl = (DataStoreImpl) c05031.L$0;
            ResultKt.throwOnFailure(obj);
        }
        try {
            int i3 = dataStoreImpl.collectorCounter + 1;
            dataStoreImpl.collectorCounter = i3;
            if (i3 == 1) {
                dataStoreImpl.collectorJob = BuildersKt__Builders_commonKt.launch$default(dataStoreImpl.scope, null, null, new DataStoreImpl$incrementCollector$2$1(dataStoreImpl, null), 3, null);
            }
            Unit unit = Unit.INSTANCE;
            mutex.unlock(null);
            return Unit.INSTANCE;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object decrementCollector(Continuation continuation) {
        C05001 c05001;
        DataStoreImpl dataStoreImpl;
        Mutex mutex;
        if (continuation instanceof C05001) {
            c05001 = (C05001) continuation;
            int i = c05001.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c05001.label = i - Integer.MIN_VALUE;
            } else {
                c05001 = new C05001(continuation);
            }
        }
        Object obj = c05001.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c05001.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            Mutex mutex2 = this.collectorMutex;
            c05001.L$0 = this;
            c05001.L$1 = mutex2;
            c05001.label = 1;
            if (mutex2.lock(null, c05001) == coroutine_suspended) {
                return coroutine_suspended;
            }
            dataStoreImpl = this;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = (Mutex) c05001.L$1;
            dataStoreImpl = (DataStoreImpl) c05001.L$0;
            ResultKt.throwOnFailure(obj);
        }
        try {
            int i3 = dataStoreImpl.collectorCounter - 1;
            dataStoreImpl.collectorCounter = i3;
            if (i3 == 0) {
                Job job = dataStoreImpl.collectorJob;
                if (job != null) {
                    Job.DefaultImpls.cancel$default(job, null, 1, null);
                }
                dataStoreImpl.collectorJob = null;
            }
            Unit unit = Unit.INSTANCE;
            mutex.unlock(null);
            return Unit.INSTANCE;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    @Override // androidx.datastore.core.DataStore
    public Object updateData(Function2 function2, Continuation continuation) {
        UpdatingDataContextElement updatingDataContextElement = (UpdatingDataContextElement) continuation.getContext().get(UpdatingDataContextElement.Companion.Key.INSTANCE);
        if (updatingDataContextElement != null) {
            updatingDataContextElement.checkNotUpdating(this);
        }
        return BuildersKt.withContext(new UpdatingDataContextElement(updatingDataContextElement, this), new C05142(function2, null), continuation);
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$updateData$2 */
    static final class C05142 extends SuspendLambda implements Function2 {
        final /* synthetic */ Function2 $transform;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05142(Function2 function2, Continuation continuation) {
            super(2, continuation);
            this.$transform = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            C05142 c05142 = DataStoreImpl.this.new C05142(this.$transform, continuation);
            c05142.L$0 = obj;
            return c05142;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C05142) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
            CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
            DataStoreImpl.this.writeActor.offer(new Message.Update(this.$transform, completableDeferredCompletableDeferred$default, DataStoreImpl.this.inMemoryCache.getCurrentState(), coroutineScope.getCoroutineContext()));
            this.label = 1;
            Object objAwait = completableDeferredCompletableDeferred$default.await(this);
            return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
        }
    }

    public final StorageConnection getStorageConnection$datastore_core_release() {
        return (StorageConnection) this.storageConnectionDelegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final InterProcessCoordinator getCoordinator() {
        return (InterProcessCoordinator) this.coordinator$delegate.getValue();
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$readState$2 */
    static final class C05122 extends SuspendLambda implements Function2 {
        final /* synthetic */ boolean $requireLock;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05122(boolean z, Continuation continuation) {
            super(2, continuation);
            this.$requireLock = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return DataStoreImpl.this.new C05122(this.$requireLock, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C05122) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:21:0x0051, code lost:
        
            if (r5 == r0) goto L22;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    if (DataStoreImpl.this.inMemoryCache.getCurrentState() instanceof Final) {
                        return DataStoreImpl.this.inMemoryCache.getCurrentState();
                    }
                    DataStoreImpl dataStoreImpl = DataStoreImpl.this;
                    this.label = 1;
                    if (dataStoreImpl.readAndInitOrPropagateAndThrowFailure(this) != coroutine_suspended) {
                    }
                    return coroutine_suspended;
                }
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return (State) obj;
                }
                ResultKt.throwOnFailure(obj);
                DataStoreImpl dataStoreImpl2 = DataStoreImpl.this;
                boolean z = this.$requireLock;
                this.label = 2;
                obj = dataStoreImpl2.readDataAndUpdateCache(z, this);
            } catch (Throwable th) {
                return new ReadException(th, -1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object readState(boolean z, Continuation continuation) {
        return BuildersKt.withContext(this.scope.getCoroutineContext(), new C05122(z, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00b4, code lost:
    
        if (r9 == r1) goto L45;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r9v0, types: [androidx.datastore.core.Message$Update, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v17, types: [androidx.datastore.core.Message$Update] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v24 */
    /* JADX WARN: Type inference failed for: r9v26 */
    /* JADX WARN: Type inference failed for: r9v27 */
    /* JADX WARN: Type inference failed for: r9v28 */
    /* JADX WARN: Type inference failed for: r9v29 */
    /* JADX WARN: Type inference failed for: r9v3, types: [kotlinx.coroutines.CompletableDeferred] */
    /* JADX WARN: Type inference failed for: r9v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object handleUpdate(Message.Update update, Continuation continuation) {
        C05021 c05021;
        Object objM3604constructorimpl;
        ?? r9;
        CompletableDeferred ack;
        State currentState;
        DataStoreImpl dataStoreImpl;
        Object objTransformAndWrite;
        ?? r92;
        if (continuation instanceof C05021) {
            c05021 = (C05021) continuation;
            int i = c05021.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c05021.label = i - Integer.MIN_VALUE;
            } else {
                c05021 = new C05021(continuation);
            }
        }
        Object obj = c05021.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c05021.label;
        boolean z = true;
        try {
        } catch (Throwable th) {
            th = th;
        }
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            ack = update.getAck();
            try {
                Result.Companion companion = Result.Companion;
                currentState = this.inMemoryCache.getCurrentState();
            } catch (Throwable th2) {
                th = th2;
                update = ack;
                Result.Companion companion2 = Result.Companion;
                objM3604constructorimpl = Result.m3604constructorimpl(ResultKt.createFailure(th));
                r9 = update;
            }
            if (currentState instanceof Data) {
                Function2 transform = update.getTransform();
                CoroutineContext callerContext = update.getCallerContext();
                c05021.L$0 = ack;
                c05021.label = 1;
                objTransformAndWrite = transformAndWrite(transform, callerContext, c05021);
                if (objTransformAndWrite == coroutine_suspended) {
                }
                CompletableDeferred completableDeferred = ack;
                obj = objTransformAndWrite;
                update = completableDeferred;
                objM3604constructorimpl = Result.m3604constructorimpl(obj);
                r9 = update;
                CompletableDeferredKt.completeWith(r9, objM3604constructorimpl);
                return Unit.INSTANCE;
            }
            if (!(currentState instanceof ReadException)) {
                z = currentState instanceof UnInitialized;
            }
            if (z) {
                if (currentState == update.getLastState()) {
                    c05021.L$0 = update;
                    c05021.L$1 = this;
                    c05021.L$2 = ack;
                    c05021.label = 2;
                    if (readAndInitOrPropagateAndThrowFailure(c05021) != coroutine_suspended) {
                        dataStoreImpl = this;
                        r92 = update;
                    }
                } else {
                    Intrinsics.checkNotNull(currentState, "null cannot be cast to non-null type androidx.datastore.core.ReadException<T of androidx.datastore.core.DataStoreImpl.handleUpdate$lambda$2>");
                    throw ((ReadException) currentState).getReadException();
                }
            } else {
                if (currentState instanceof Final) {
                    throw ((Final) currentState).getFinalException();
                }
                throw new NoWhenBranchMatchedException();
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 == 2) {
                CompletableDeferred completableDeferred2 = (CompletableDeferred) c05021.L$2;
                dataStoreImpl = (DataStoreImpl) c05021.L$1;
                Message.Update update2 = (Message.Update) c05021.L$0;
                ResultKt.throwOnFailure(obj);
                ack = completableDeferred2;
                r92 = update2;
            } else if (i2 != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
        CompletableDeferred completableDeferred3 = (CompletableDeferred) c05021.L$0;
        ResultKt.throwOnFailure(obj);
        update = completableDeferred3;
        objM3604constructorimpl = Result.m3604constructorimpl(obj);
        r9 = update;
        CompletableDeferredKt.completeWith(r9, objM3604constructorimpl);
        return Unit.INSTANCE;
        Function2 transform2 = r92.getTransform();
        CoroutineContext callerContext2 = r92.getCallerContext();
        c05021.L$0 = ack;
        c05021.L$1 = null;
        c05021.L$2 = null;
        c05021.label = 3;
        objTransformAndWrite = dataStoreImpl.transformAndWrite(transform2, callerContext2, c05021);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0069, code lost:
    
        if (r4.runIfNeeded(r0) == r1) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object readAndInitOrPropagateAndThrowFailure(Continuation continuation) throws Throwable {
        C05051 c05051;
        DataStoreImpl dataStoreImpl;
        int iIntValue;
        int i;
        Throwable th;
        DataStoreImpl dataStoreImpl2;
        if (continuation instanceof C05051) {
            c05051 = (C05051) continuation;
            int i2 = c05051.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c05051.label = i2 - Integer.MIN_VALUE;
            } else {
                c05051 = new C05051(continuation);
            }
        }
        Object version = c05051.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = c05051.label;
        try {
            if (i3 == 0) {
                ResultKt.throwOnFailure(version);
                InterProcessCoordinator coordinator = getCoordinator();
                c05051.L$0 = this;
                c05051.label = 1;
                version = coordinator.getVersion(c05051);
                if (version != coroutine_suspended) {
                    dataStoreImpl = this;
                }
                return coroutine_suspended;
            }
            if (i3 != 1) {
                if (i3 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                i = c05051.I$0;
                dataStoreImpl2 = (DataStoreImpl) c05051.L$0;
                try {
                    ResultKt.throwOnFailure(version);
                    return Unit.INSTANCE;
                } catch (Throwable th2) {
                    th = th2;
                    dataStoreImpl2.inMemoryCache.tryUpdate(new ReadException(th, i));
                    throw th;
                }
            }
            dataStoreImpl = (DataStoreImpl) c05051.L$0;
            ResultKt.throwOnFailure(version);
            InitDataStore initDataStore = dataStoreImpl.readAndInit;
            c05051.L$0 = dataStoreImpl;
            c05051.I$0 = iIntValue;
            c05051.label = 2;
        } catch (Throwable th3) {
            i = iIntValue;
            th = th3;
            dataStoreImpl2 = dataStoreImpl;
            dataStoreImpl2.inMemoryCache.tryUpdate(new ReadException(th, i));
            throw th;
        }
        iIntValue = ((Number) version).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a7, code lost:
    
        if (r11 == r1) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00c0, code lost:
    
        if (r11 == r1) goto L39;
     */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object readDataAndUpdateCache(boolean z, Continuation continuation) {
        C05061 c05061;
        State state;
        Object obj;
        boolean z2;
        DataStoreImpl dataStoreImpl;
        Pair pair;
        if (continuation instanceof C05061) {
            c05061 = (C05061) continuation;
            int i = c05061.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c05061.label = i - Integer.MIN_VALUE;
            } else {
                c05061 = new C05061(continuation);
            }
        }
        Object objTryLock = c05061.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c05061.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objTryLock);
            State currentState = this.inMemoryCache.getCurrentState();
            if (currentState instanceof UnInitialized) {
                throw new IllegalStateException("This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542");
            }
            InterProcessCoordinator coordinator = getCoordinator();
            c05061.L$0 = this;
            c05061.L$1 = currentState;
            c05061.Z$0 = z;
            c05061.label = 1;
            Object version = coordinator.getVersion(c05061);
            if (version != coroutine_suspended) {
                state = currentState;
                obj = version;
                z2 = z;
                dataStoreImpl = this;
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 == 2) {
                dataStoreImpl = (DataStoreImpl) c05061.L$0;
                ResultKt.throwOnFailure(objTryLock);
                pair = (Pair) objTryLock;
                State state2 = (State) pair.component1();
                if (((Boolean) pair.component2()).booleanValue()) {
                }
                return state2;
            }
            if (i2 != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            dataStoreImpl = (DataStoreImpl) c05061.L$0;
            ResultKt.throwOnFailure(objTryLock);
            pair = (Pair) objTryLock;
            State state22 = (State) pair.component1();
            if (((Boolean) pair.component2()).booleanValue()) {
                dataStoreImpl.inMemoryCache.tryUpdate(state22);
            }
            return state22;
        }
        boolean z3 = c05061.Z$0;
        State state3 = (State) c05061.L$1;
        DataStoreImpl dataStoreImpl2 = (DataStoreImpl) c05061.L$0;
        ResultKt.throwOnFailure(objTryLock);
        z2 = z3;
        dataStoreImpl = dataStoreImpl2;
        state = state3;
        obj = objTryLock;
        int iIntValue = ((Number) obj).intValue();
        boolean z4 = state instanceof Data;
        int version2 = z4 ? state.getVersion() : -1;
        if (z4 && iIntValue == version2) {
            return state;
        }
        if (z2) {
            InterProcessCoordinator coordinator2 = dataStoreImpl.getCoordinator();
            C05073 c05073 = dataStoreImpl.new C05073(null);
            c05061.L$0 = dataStoreImpl;
            c05061.L$1 = null;
            c05061.label = 2;
            objTryLock = coordinator2.lock(c05073, c05061);
        } else {
            InterProcessCoordinator coordinator3 = dataStoreImpl.getCoordinator();
            C05084 c05084 = dataStoreImpl.new C05084(version2, null);
            c05061.L$0 = dataStoreImpl;
            c05061.L$1 = null;
            c05061.label = 3;
            objTryLock = coordinator3.tryLock(c05084, c05061);
        }
        return coroutine_suspended;
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$3 */
    /* JADX INFO: loaded from: classes4.dex */
    static final class C05073 extends SuspendLambda implements Function1 {
        Object L$0;
        int label;

        C05073(Continuation continuation) {
            super(1, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Continuation continuation) {
            return DataStoreImpl.this.new C05073(continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation continuation) {
            return ((C05073) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Throwable th;
            State readException;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
            } catch (Throwable th2) {
                InterProcessCoordinator coordinator = DataStoreImpl.this.getCoordinator();
                this.L$0 = th2;
                this.label = 2;
                Object version = coordinator.getVersion(this);
                if (version != coroutine_suspended) {
                    th = th2;
                    obj = version;
                }
                return coroutine_suspended;
            }
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                DataStoreImpl dataStoreImpl = DataStoreImpl.this;
                this.label = 1;
                obj = dataStoreImpl.readDataOrHandleCorruption(true, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    th = (Throwable) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    readException = new ReadException(th, ((Number) obj).intValue());
                    return TuplesKt.m1081to(readException, Boxing.boxBoolean(true));
                }
                ResultKt.throwOnFailure(obj);
            }
            readException = (State) obj;
            return TuplesKt.m1081to(readException, Boxing.boxBoolean(true));
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$4 */
    /* JADX INFO: loaded from: classes4.dex */
    static final class C05084 extends SuspendLambda implements Function2 {
        final /* synthetic */ int $cachedVersion;
        Object L$0;
        /* synthetic */ boolean Z$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05084(int i, Continuation continuation) {
            super(2, continuation);
            this.$cachedVersion = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            C05084 c05084 = DataStoreImpl.this.new C05084(this.$cachedVersion, continuation);
            c05084.Z$0 = ((Boolean) obj).booleanValue();
            return c05084;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            return invoke(((Boolean) obj).booleanValue(), (Continuation) obj2);
        }

        public final Object invoke(boolean z, Continuation continuation) {
            return ((C05084) create(Boolean.valueOf(z), continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v10 */
        /* JADX WARN: Type inference failed for: r0v2 */
        /* JADX WARN: Type inference failed for: r0v3 */
        /* JADX WARN: Type inference failed for: r0v5 */
        /* JADX WARN: Type inference failed for: r0v6 */
        /* JADX WARN: Type inference failed for: r0v9 */
        /* JADX WARN: Type inference failed for: r1v0, types: [int] */
        /* JADX WARN: Type inference failed for: r1v1, types: [boolean] */
        /* JADX WARN: Type inference failed for: r1v13 */
        /* JADX WARN: Type inference failed for: r1v14 */
        /* JADX WARN: Type inference failed for: r1v15 */
        /* JADX WARN: Type inference failed for: r1v4, types: [boolean] */
        /* JADX WARN: Type inference failed for: r1v6 */
        /* JADX WARN: Type inference failed for: r1v9 */
        /* JADX WARN: Type inference failed for: r4v0 */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Throwable th;
            int iIntValue;
            ?? r0;
            ?? r02;
            State state;
            ?? r1;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ?? r12 = this.label;
            try {
            } catch (Throwable th2) {
                if (r12 != 0) {
                    InterProcessCoordinator coordinator = DataStoreImpl.this.getCoordinator();
                    this.L$0 = th2;
                    this.Z$0 = r12;
                    this.label = 2;
                    Object version = coordinator.getVersion(this);
                    if (version != coroutine_suspended) {
                        r02 = r12;
                        th = th2;
                        obj = version;
                    }
                    return coroutine_suspended;
                }
                ?? r4 = r12;
                th = th2;
                iIntValue = this.$cachedVersion;
                r0 = r4 == true ? 1 : 0;
            }
            if (r12 == 0) {
                ResultKt.throwOnFailure(obj);
                boolean z = this.Z$0;
                DataStoreImpl dataStoreImpl = DataStoreImpl.this;
                this.Z$0 = z;
                this.label = 1;
                obj = dataStoreImpl.readDataOrHandleCorruption(z, this);
                r12 = z;
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (r12 != 1) {
                    if (r12 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    boolean z2 = this.Z$0;
                    th = (Throwable) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    r02 = z2;
                    iIntValue = ((Number) obj).intValue();
                    r0 = r02;
                    ReadException readException = new ReadException(th, iIntValue);
                    r1 = r0;
                    state = readException;
                    return TuplesKt.m1081to(state, Boxing.boxBoolean(r1));
                }
                boolean z3 = this.Z$0;
                ResultKt.throwOnFailure(obj);
                r12 = z3;
            }
            state = (State) obj;
            r1 = r12;
            return TuplesKt.m1081to(state, Boxing.boxBoolean(r1));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object readDataFromFileOrDefault(Continuation continuation) {
        return StorageConnectionKt.readData(getStorageConnection$datastore_core_release(), continuation);
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$transformAndWrite$2 */
    static final class C05132 extends SuspendLambda implements Function1 {
        final /* synthetic */ CoroutineContext $callerContext;
        final /* synthetic */ Function2 $transform;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05132(CoroutineContext coroutineContext, Function2 function2, Continuation continuation) {
            super(1, continuation);
            this.$callerContext = coroutineContext;
            this.$transform = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Continuation continuation) {
            return DataStoreImpl.this.new C05132(this.$callerContext, this.$transform, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation continuation) {
            return ((C05132) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x005e  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) throws CorruptionException {
            Data data;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                DataStoreImpl dataStoreImpl = DataStoreImpl.this;
                this.label = 1;
                obj = dataStoreImpl.readDataOrHandleCorruption(true, this);
                if (obj != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    Object obj2 = this.L$0;
                    ResultKt.throwOnFailure(obj);
                    return obj2;
                }
                data = (Data) this.L$0;
                ResultKt.throwOnFailure(obj);
                data.checkHashCode();
                if (!Intrinsics.areEqual(data.getValue(), obj)) {
                    DataStoreImpl dataStoreImpl2 = DataStoreImpl.this;
                    this.L$0 = obj;
                    this.label = 3;
                    if (dataStoreImpl2.writeData$datastore_core_release(obj, true, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            data = (Data) obj;
            CoroutineContext coroutineContext = this.$callerContext;
            DataStoreImpl$transformAndWrite$2$newData$1 dataStoreImpl$transformAndWrite$2$newData$1 = new DataStoreImpl$transformAndWrite$2$newData$1(this.$transform, data, null);
            this.L$0 = data;
            this.label = 2;
            obj = BuildersKt.withContext(coroutineContext, dataStoreImpl$transformAndWrite$2$newData$1, this);
            if (obj != coroutine_suspended) {
                data.checkHashCode();
                if (!Intrinsics.areEqual(data.getValue(), obj)) {
                }
                return obj;
            }
            return coroutine_suspended;
        }
    }

    private final Object transformAndWrite(Function2 function2, CoroutineContext coroutineContext, Continuation continuation) {
        return getCoordinator().lock(new C05132(coroutineContext, function2, null), continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object writeData$datastore_core_release(Object obj, boolean z, Continuation continuation) {
        DataStoreImpl$writeData$1 dataStoreImpl$writeData$1;
        Ref$IntRef ref$IntRef;
        if (continuation instanceof DataStoreImpl$writeData$1) {
            dataStoreImpl$writeData$1 = (DataStoreImpl$writeData$1) continuation;
            int i = dataStoreImpl$writeData$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                dataStoreImpl$writeData$1.label = i - Integer.MIN_VALUE;
            } else {
                dataStoreImpl$writeData$1 = new DataStoreImpl$writeData$1(this, continuation);
            }
        }
        Object obj2 = dataStoreImpl$writeData$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = dataStoreImpl$writeData$1.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj2);
            Ref$IntRef ref$IntRef2 = new Ref$IntRef();
            StorageConnection storageConnection$datastore_core_release = getStorageConnection$datastore_core_release();
            DataStoreImpl$writeData$2 dataStoreImpl$writeData$2 = new DataStoreImpl$writeData$2(ref$IntRef2, this, obj, z, null);
            dataStoreImpl$writeData$1.L$0 = ref$IntRef2;
            dataStoreImpl$writeData$1.label = 1;
            if (storageConnection$datastore_core_release.writeScope(dataStoreImpl$writeData$2, dataStoreImpl$writeData$1) == coroutine_suspended) {
                return coroutine_suspended;
            }
            ref$IntRef = ref$IntRef2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ref$IntRef = (Ref$IntRef) dataStoreImpl$writeData$1.L$0;
            ResultKt.throwOnFailure(obj2);
        }
        return Boxing.boxInt(ref$IntRef.element);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00aa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object readDataOrHandleCorruption(boolean z, Continuation continuation) throws CorruptionException {
        C05091 c05091;
        DataStoreImpl dataStoreImpl;
        Ref$ObjectRef ref$ObjectRef;
        Object objHandleCorruption;
        CorruptionException corruptionException;
        Ref$ObjectRef ref$ObjectRef2;
        DataStoreImpl dataStoreImpl2;
        CorruptionException corruptionException2;
        Function1 c05113;
        Ref$IntRef ref$IntRef;
        Ref$ObjectRef ref$ObjectRef3;
        DataStoreImpl dataStoreImpl3;
        DataStoreImpl dataStoreImpl4;
        int iHashCode;
        Object version;
        boolean z2;
        int i;
        Object obj;
        if (continuation instanceof C05091) {
            c05091 = (C05091) continuation;
            int i2 = c05091.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c05091.label = i2 - Integer.MIN_VALUE;
            } else {
                c05091 = new C05091(continuation);
            }
        }
        Object version2 = c05091.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r2 = c05091.label;
        try {
        } catch (CorruptionException e) {
            e = e;
            dataStoreImpl = r2;
        }
        switch (r2) {
            case 0:
                ResultKt.throwOnFailure(version2);
                try {
                    if (z) {
                        c05091.L$0 = this;
                        c05091.Z$0 = z;
                        c05091.label = 1;
                        version2 = readDataFromFileOrDefault(c05091);
                        if (version2 != coroutine_suspended) {
                            dataStoreImpl4 = this;
                            if (version2 == null) {
                                try {
                                    iHashCode = version2.hashCode();
                                } catch (CorruptionException e2) {
                                    e = e2;
                                    dataStoreImpl = dataStoreImpl4;
                                    ref$ObjectRef = new Ref$ObjectRef();
                                    CorruptionHandler corruptionHandler = dataStoreImpl.corruptionHandler;
                                    c05091.L$0 = dataStoreImpl;
                                    c05091.L$1 = e;
                                    c05091.L$2 = ref$ObjectRef;
                                    c05091.L$3 = ref$ObjectRef;
                                    c05091.Z$0 = z;
                                    c05091.label = 5;
                                    objHandleCorruption = corruptionHandler.handleCorruption(e, c05091);
                                    if (objHandleCorruption != coroutine_suspended) {
                                    }
                                }
                            } else {
                                iHashCode = 0;
                            }
                            InterProcessCoordinator coordinator = dataStoreImpl4.getCoordinator();
                            c05091.L$0 = dataStoreImpl4;
                            c05091.L$1 = version2;
                            c05091.Z$0 = z;
                            c05091.I$0 = iHashCode;
                            c05091.label = 2;
                            version = coordinator.getVersion(c05091);
                            if (version != coroutine_suspended) {
                                int i3 = iHashCode;
                                z2 = z;
                                i = i3;
                                obj = version2;
                                version2 = version;
                                return new Data(obj, i, ((Number) version2).intValue());
                            }
                        }
                    } else {
                        InterProcessCoordinator coordinator2 = getCoordinator();
                        c05091.L$0 = this;
                        c05091.Z$0 = z;
                        c05091.label = 3;
                        version2 = coordinator2.getVersion(c05091);
                        if (version2 != coroutine_suspended) {
                            dataStoreImpl3 = this;
                            int iIntValue = ((Number) version2).intValue();
                            InterProcessCoordinator coordinator3 = dataStoreImpl3.getCoordinator();
                            C05102 c05102 = dataStoreImpl3.new C05102(iIntValue, null);
                            c05091.L$0 = dataStoreImpl3;
                            c05091.Z$0 = z;
                            c05091.label = 4;
                            version2 = coordinator3.tryLock(c05102, c05091);
                            if (version2 == coroutine_suspended) {
                            }
                            return (Data) version2;
                        }
                    }
                } catch (CorruptionException e3) {
                    e = e3;
                    dataStoreImpl = this;
                    ref$ObjectRef = new Ref$ObjectRef();
                    CorruptionHandler corruptionHandler2 = dataStoreImpl.corruptionHandler;
                    c05091.L$0 = dataStoreImpl;
                    c05091.L$1 = e;
                    c05091.L$2 = ref$ObjectRef;
                    c05091.L$3 = ref$ObjectRef;
                    c05091.Z$0 = z;
                    c05091.label = 5;
                    objHandleCorruption = corruptionHandler2.handleCorruption(e, c05091);
                    if (objHandleCorruption != coroutine_suspended) {
                        corruptionException = e;
                        version2 = objHandleCorruption;
                        ref$ObjectRef2 = ref$ObjectRef;
                        dataStoreImpl2 = dataStoreImpl;
                        ref$ObjectRef2.element = version2;
                        Ref$IntRef ref$IntRef2 = new Ref$IntRef();
                        try {
                            c05113 = new C05113(ref$ObjectRef, dataStoreImpl2, ref$IntRef2, null);
                            c05091.L$0 = corruptionException;
                            c05091.L$1 = ref$ObjectRef;
                            c05091.L$2 = ref$IntRef2;
                            c05091.L$3 = null;
                            c05091.label = 6;
                            if (dataStoreImpl2.doWithWriteFileLock(z, c05113, c05091) != coroutine_suspended) {
                            }
                        } catch (Throwable th) {
                            th = th;
                            corruptionException2 = corruptionException;
                            ExceptionsKt.addSuppressed(corruptionException2, th);
                            throw corruptionException2;
                        }
                    }
                }
                return coroutine_suspended;
            case 1:
                z = c05091.Z$0;
                DataStoreImpl dataStoreImpl5 = (DataStoreImpl) c05091.L$0;
                ResultKt.throwOnFailure(version2);
                dataStoreImpl4 = dataStoreImpl5;
                if (version2 == null) {
                }
                InterProcessCoordinator coordinator4 = dataStoreImpl4.getCoordinator();
                c05091.L$0 = dataStoreImpl4;
                c05091.L$1 = version2;
                c05091.Z$0 = z;
                c05091.I$0 = iHashCode;
                c05091.label = 2;
                version = coordinator4.getVersion(c05091);
                if (version != coroutine_suspended) {
                }
                return coroutine_suspended;
            case 2:
                i = c05091.I$0;
                z2 = c05091.Z$0;
                obj = c05091.L$1;
                dataStoreImpl4 = (DataStoreImpl) c05091.L$0;
                try {
                    ResultKt.throwOnFailure(version2);
                    return new Data(obj, i, ((Number) version2).intValue());
                } catch (CorruptionException e4) {
                    e = e4;
                    z = z2;
                    dataStoreImpl = dataStoreImpl4;
                    ref$ObjectRef = new Ref$ObjectRef();
                    CorruptionHandler corruptionHandler22 = dataStoreImpl.corruptionHandler;
                    c05091.L$0 = dataStoreImpl;
                    c05091.L$1 = e;
                    c05091.L$2 = ref$ObjectRef;
                    c05091.L$3 = ref$ObjectRef;
                    c05091.Z$0 = z;
                    c05091.label = 5;
                    objHandleCorruption = corruptionHandler22.handleCorruption(e, c05091);
                    if (objHandleCorruption != coroutine_suspended) {
                    }
                    return coroutine_suspended;
                }
            case 3:
                z = c05091.Z$0;
                dataStoreImpl3 = (DataStoreImpl) c05091.L$0;
                ResultKt.throwOnFailure(version2);
                int iIntValue2 = ((Number) version2).intValue();
                InterProcessCoordinator coordinator32 = dataStoreImpl3.getCoordinator();
                C05102 c051022 = dataStoreImpl3.new C05102(iIntValue2, null);
                c05091.L$0 = dataStoreImpl3;
                c05091.Z$0 = z;
                c05091.label = 4;
                version2 = coordinator32.tryLock(c051022, c05091);
                if (version2 == coroutine_suspended) {
                }
                return (Data) version2;
            case 4:
                boolean z3 = c05091.Z$0;
                ResultKt.throwOnFailure(version2);
                return (Data) version2;
            case 5:
                z = c05091.Z$0;
                Ref$ObjectRef ref$ObjectRef4 = (Ref$ObjectRef) c05091.L$3;
                Ref$ObjectRef ref$ObjectRef5 = (Ref$ObjectRef) c05091.L$2;
                corruptionException = (CorruptionException) c05091.L$1;
                DataStoreImpl dataStoreImpl6 = (DataStoreImpl) c05091.L$0;
                ResultKt.throwOnFailure(version2);
                ref$ObjectRef2 = ref$ObjectRef4;
                ref$ObjectRef = ref$ObjectRef5;
                dataStoreImpl2 = dataStoreImpl6;
                ref$ObjectRef2.element = version2;
                Ref$IntRef ref$IntRef22 = new Ref$IntRef();
                c05113 = new C05113(ref$ObjectRef, dataStoreImpl2, ref$IntRef22, null);
                c05091.L$0 = corruptionException;
                c05091.L$1 = ref$ObjectRef;
                c05091.L$2 = ref$IntRef22;
                c05091.L$3 = null;
                c05091.label = 6;
                if (dataStoreImpl2.doWithWriteFileLock(z, c05113, c05091) != coroutine_suspended) {
                    ref$IntRef = ref$IntRef22;
                    ref$ObjectRef3 = ref$ObjectRef;
                    Object obj2 = ref$ObjectRef3.element;
                    return new Data(obj2, obj2 != null ? obj2.hashCode() : 0, ref$IntRef.element);
                }
                return coroutine_suspended;
            case 6:
                ref$IntRef = (Ref$IntRef) c05091.L$2;
                ref$ObjectRef3 = (Ref$ObjectRef) c05091.L$1;
                corruptionException2 = (CorruptionException) c05091.L$0;
                try {
                    ResultKt.throwOnFailure(version2);
                    Object obj22 = ref$ObjectRef3.element;
                    return new Data(obj22, obj22 != null ? obj22.hashCode() : 0, ref$IntRef.element);
                } catch (Throwable th2) {
                    th = th2;
                    ExceptionsKt.addSuppressed(corruptionException2, th);
                    throw corruptionException2;
                }
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$readDataOrHandleCorruption$2 */
    /* JADX INFO: loaded from: classes4.dex */
    static final class C05102 extends SuspendLambda implements Function2 {
        final /* synthetic */ int $preLockVersion;
        Object L$0;
        /* synthetic */ boolean Z$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05102(int i, Continuation continuation) {
            super(2, continuation);
            this.$preLockVersion = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            C05102 c05102 = DataStoreImpl.this.new C05102(this.$preLockVersion, continuation);
            c05102.Z$0 = ((Boolean) obj).booleanValue();
            return c05102;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            return invoke(((Boolean) obj).booleanValue(), (Continuation) obj2);
        }

        public final Object invoke(boolean z, Continuation continuation) {
            return ((C05102) create(Boolean.valueOf(z), continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0059  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x005e  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            boolean z;
            Object obj2;
            int iIntValue;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                z = this.Z$0;
                DataStoreImpl dataStoreImpl = DataStoreImpl.this;
                this.Z$0 = z;
                this.label = 1;
                obj = dataStoreImpl.readDataFromFileOrDefault(this);
                if (obj != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                obj2 = this.L$0;
                ResultKt.throwOnFailure(obj);
                iIntValue = ((Number) obj).intValue();
                return new Data(obj2, obj2 != null ? obj2.hashCode() : 0, iIntValue);
            }
            z = this.Z$0;
            ResultKt.throwOnFailure(obj);
            if (z) {
                InterProcessCoordinator coordinator = DataStoreImpl.this.getCoordinator();
                this.L$0 = obj;
                this.label = 2;
                Object version = coordinator.getVersion(this);
                if (version != coroutine_suspended) {
                    obj2 = obj;
                    obj = version;
                    iIntValue = ((Number) obj).intValue();
                    return new Data(obj2, obj2 != null ? obj2.hashCode() : 0, iIntValue);
                }
                return coroutine_suspended;
            }
            obj2 = obj;
            iIntValue = this.$preLockVersion;
            return new Data(obj2, obj2 != null ? obj2.hashCode() : 0, iIntValue);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$readDataOrHandleCorruption$3 */
    /* JADX INFO: loaded from: classes4.dex */
    static final class C05113 extends SuspendLambda implements Function1 {
        final /* synthetic */ Ref$ObjectRef $newData;
        final /* synthetic */ Ref$IntRef $version;
        Object L$0;
        int label;
        final /* synthetic */ DataStoreImpl this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05113(Ref$ObjectRef ref$ObjectRef, DataStoreImpl dataStoreImpl, Ref$IntRef ref$IntRef, Continuation continuation) {
            super(1, continuation);
            this.$newData = ref$ObjectRef;
            this.this$0 = dataStoreImpl;
            this.$version = ref$IntRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Continuation continuation) {
            return new C05113(this.$newData, this.this$0, this.$version, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation continuation) {
            return ((C05113) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Ref$IntRef ref$IntRef;
            Ref$ObjectRef ref$ObjectRef;
            Ref$IntRef ref$IntRef2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
            } catch (CorruptionException unused) {
                Ref$IntRef ref$IntRef3 = this.$version;
                DataStoreImpl dataStoreImpl = this.this$0;
                Object obj2 = this.$newData.element;
                this.L$0 = ref$IntRef3;
                this.label = 3;
                Object objWriteData$datastore_core_release = dataStoreImpl.writeData$datastore_core_release(obj2, true, this);
                if (objWriteData$datastore_core_release != coroutine_suspended) {
                    ref$IntRef = ref$IntRef3;
                    obj = objWriteData$datastore_core_release;
                }
                return coroutine_suspended;
            }
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                ref$ObjectRef = this.$newData;
                DataStoreImpl dataStoreImpl2 = this.this$0;
                this.L$0 = ref$ObjectRef;
                this.label = 1;
                obj = dataStoreImpl2.readDataFromFileOrDefault(this);
                if (obj == coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                if (i == 2) {
                    ref$IntRef2 = (Ref$IntRef) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    ref$IntRef2.element = ((Number) obj).intValue();
                    return Unit.INSTANCE;
                }
                if (i != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ref$IntRef = (Ref$IntRef) this.L$0;
                ResultKt.throwOnFailure(obj);
                ref$IntRef.element = ((Number) obj).intValue();
                return Unit.INSTANCE;
            }
            ref$ObjectRef = (Ref$ObjectRef) this.L$0;
            ResultKt.throwOnFailure(obj);
            ref$ObjectRef.element = obj;
            ref$IntRef2 = this.$version;
            InterProcessCoordinator coordinator = this.this$0.getCoordinator();
            this.L$0 = ref$IntRef2;
            this.label = 2;
            obj = coordinator.getVersion(this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
            ref$IntRef2.element = ((Number) obj).intValue();
            return Unit.INSTANCE;
        }
    }

    private final Object doWithWriteFileLock(boolean z, Function1 function1, Continuation continuation) {
        if (z) {
            return function1.invoke(continuation);
        }
        return getCoordinator().lock(new C05013(function1, null), continuation);
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$doWithWriteFileLock$3 */
    /* JADX INFO: loaded from: classes4.dex */
    static final class C05013 extends SuspendLambda implements Function1 {
        final /* synthetic */ Function1 $block;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05013(Function1 function1, Continuation continuation) {
            super(1, continuation);
            this.$block = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Continuation continuation) {
            return new C05013(this.$block, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation continuation) {
            return ((C05013) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            Function1 function1 = this.$block;
            this.label = 1;
            Object objInvoke = function1.invoke(this);
            return objInvoke == coroutine_suspended ? coroutine_suspended : objInvoke;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class InitDataStore extends RunOnce {
        private List initTasks;
        final /* synthetic */ DataStoreImpl this$0;

        public InitDataStore(DataStoreImpl dataStoreImpl, List initTasksList) {
            Intrinsics.checkNotNullParameter(initTasksList, "initTasksList");
            this.this$0 = dataStoreImpl;
            this.initTasks = CollectionsKt.toList(initTasksList);
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x006e  */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
        @Override // androidx.datastore.core.RunOnce
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        protected Object doRun(Continuation continuation) throws CorruptionException {
            DataStoreImpl$InitDataStore$doRun$1 dataStoreImpl$InitDataStore$doRun$1;
            InitDataStore initDataStore;
            Data data;
            if (continuation instanceof DataStoreImpl$InitDataStore$doRun$1) {
                dataStoreImpl$InitDataStore$doRun$1 = (DataStoreImpl$InitDataStore$doRun$1) continuation;
                int i = dataStoreImpl$InitDataStore$doRun$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    dataStoreImpl$InitDataStore$doRun$1.label = i - Integer.MIN_VALUE;
                } else {
                    dataStoreImpl$InitDataStore$doRun$1 = new DataStoreImpl$InitDataStore$doRun$1(this, continuation);
                }
            }
            Object dataOrHandleCorruption = dataStoreImpl$InitDataStore$doRun$1.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i2 = dataStoreImpl$InitDataStore$doRun$1.label;
            if (i2 == 0) {
                ResultKt.throwOnFailure(dataOrHandleCorruption);
                List list = this.initTasks;
                if (list != null) {
                    Intrinsics.checkNotNull(list);
                    if (!list.isEmpty()) {
                        InterProcessCoordinator coordinator = this.this$0.getCoordinator();
                        DataStoreImpl$InitDataStore$doRun$initData$1 dataStoreImpl$InitDataStore$doRun$initData$1 = new DataStoreImpl$InitDataStore$doRun$initData$1(this.this$0, this, null);
                        dataStoreImpl$InitDataStore$doRun$1.L$0 = this;
                        dataStoreImpl$InitDataStore$doRun$1.label = 2;
                        dataOrHandleCorruption = coordinator.lock(dataStoreImpl$InitDataStore$doRun$initData$1, dataStoreImpl$InitDataStore$doRun$1);
                        if (dataOrHandleCorruption != coroutine_suspended) {
                            initDataStore = this;
                            data = (Data) dataOrHandleCorruption;
                        }
                    } else {
                        DataStoreImpl dataStoreImpl = this.this$0;
                        dataStoreImpl$InitDataStore$doRun$1.L$0 = this;
                        dataStoreImpl$InitDataStore$doRun$1.label = 1;
                        dataOrHandleCorruption = dataStoreImpl.readDataOrHandleCorruption(false, dataStoreImpl$InitDataStore$doRun$1);
                        if (dataOrHandleCorruption != coroutine_suspended) {
                            initDataStore = this;
                            data = (Data) dataOrHandleCorruption;
                        }
                    }
                    return coroutine_suspended;
                }
            } else if (i2 == 1) {
                initDataStore = (InitDataStore) dataStoreImpl$InitDataStore$doRun$1.L$0;
                ResultKt.throwOnFailure(dataOrHandleCorruption);
                data = (Data) dataOrHandleCorruption;
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                initDataStore = (InitDataStore) dataStoreImpl$InitDataStore$doRun$1.L$0;
                ResultKt.throwOnFailure(dataOrHandleCorruption);
                data = (Data) dataOrHandleCorruption;
            }
            initDataStore.this$0.inMemoryCache.tryUpdate(data);
            return Unit.INSTANCE;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
