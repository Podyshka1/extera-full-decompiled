package kotlinx.coroutines.selects;

import androidx.concurrent.futures.AbstractC0329xc40028dd;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancelHandler;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.internal.Segment;

/* JADX INFO: loaded from: classes5.dex */
public class SelectImplementation implements CancelHandler, SelectBuilder, SelectInstance, Waiter {
    private static final /* synthetic */ AtomicReferenceFieldUpdater state$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(SelectImplementation.class, Object.class, "state$volatile");
    private final CoroutineContext context;
    private Object disposableHandleOrSegment;
    private volatile /* synthetic */ Object state$volatile = SelectKt.STATE_REG;
    private List clauses = new ArrayList(2);
    private int indexInSegment = -1;
    private Object internalResult = SelectKt.NO_RESULT;

    /* JADX INFO: renamed from: kotlinx.coroutines.selects.SelectImplementation$doSelectSuspend$1 */
    static final class C26441 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C26441(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SelectImplementation.this.doSelectSuspend(this);
        }
    }

    public Object doSelect(Continuation continuation) {
        return doSelect$suspendImpl(this, continuation);
    }

    public SelectImplementation(CoroutineContext coroutineContext) {
        this.context = coroutineContext;
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    public CoroutineContext getContext() {
        return this.context;
    }

    private final boolean isSelected() {
        return state$volatile$FU.get(this) instanceof ClauseData;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0062, code lost:
    
        r0 = r0.getResult();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006a, code lost:
    
        if (r0 != kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006c, code lost:
    
        kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0073, code lost:
    
        if (r0 != kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0075, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0078, code lost:
    
        return kotlin.Unit.INSTANCE;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final Object waitUntilSelected(Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = state$volatile$FU;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == SelectKt.STATE_REG) {
                if (AbstractC0329xc40028dd.m112m(state$volatile$FU, this, obj, cancellableContinuationImpl)) {
                    CancellableContinuationKt.invokeOnCancellation(cancellableContinuationImpl, this);
                    break;
                }
            } else if (obj instanceof List) {
                if (AbstractC0329xc40028dd.m112m(state$volatile$FU, this, obj, SelectKt.STATE_REG)) {
                    Iterator it = ((Iterable) obj).iterator();
                    while (it.hasNext()) {
                        reregisterClause(it.next());
                    }
                }
            } else if (obj instanceof ClauseData) {
                cancellableContinuationImpl.resume(Unit.INSTANCE, ((ClauseData) obj).createOnCancellationAction(this, this.internalResult));
            } else {
                throw new IllegalStateException(("unexpected state: " + obj).toString());
            }
        }
    }

    static /* synthetic */ Object doSelect$suspendImpl(SelectImplementation selectImplementation, Continuation continuation) {
        return selectImplementation.isSelected() ? selectImplementation.complete(continuation) : selectImplementation.doSelectSuspend(continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object doSelectSuspend(Continuation continuation) {
        C26441 c26441;
        SelectImplementation selectImplementation;
        if (continuation instanceof C26441) {
            c26441 = (C26441) continuation;
            int i = c26441.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c26441.label = i - Integer.MIN_VALUE;
            } else {
                c26441 = new C26441(continuation);
            }
        }
        Object obj = c26441.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c26441.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            c26441.L$0 = this;
            c26441.label = 1;
            if (waitUntilSelected(c26441) != coroutine_suspended) {
                selectImplementation = this;
            }
        }
        if (i2 != 1) {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return obj;
        }
        selectImplementation = (SelectImplementation) c26441.L$0;
        ResultKt.throwOnFailure(obj);
        c26441.L$0 = null;
        c26441.label = 2;
        Object objComplete = selectImplementation.complete(c26441);
        return objComplete == coroutine_suspended ? coroutine_suspended : objComplete;
    }

    @Override // kotlinx.coroutines.selects.SelectBuilder
    public void invoke(SelectClause0 selectClause0, Function1 function1) {
        register$default(this, new ClauseData(selectClause0.getClauseObject(), selectClause0.getRegFunc(), selectClause0.getProcessResFunc(), SelectKt.getPARAM_CLAUSE_0(), function1, selectClause0.getOnCancellationConstructor()), false, 1, null);
    }

    @Override // kotlinx.coroutines.selects.SelectBuilder
    public void invoke(SelectClause1 selectClause1, Function2 function2) {
        register$default(this, new ClauseData(selectClause1.getClauseObject(), selectClause1.getRegFunc(), selectClause1.getProcessResFunc(), null, function2, selectClause1.getOnCancellationConstructor()), false, 1, null);
    }

    public static /* synthetic */ void register$default(SelectImplementation selectImplementation, ClauseData clauseData, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: register");
        }
        if ((i & 1) != 0) {
            z = false;
        }
        selectImplementation.register(clauseData, z);
    }

    public final void register(ClauseData clauseData, boolean z) {
        if (state$volatile$FU.get(this) instanceof ClauseData) {
            return;
        }
        if (!z) {
            checkClauseObject(clauseData.clauseObject);
        }
        if (clauseData.tryRegisterAsWaiter(this)) {
            if (!z) {
                List list = this.clauses;
                Intrinsics.checkNotNull(list);
                list.add(clauseData);
            }
            clauseData.disposableHandleOrSegment = this.disposableHandleOrSegment;
            clauseData.indexInSegment = this.indexInSegment;
            this.disposableHandleOrSegment = null;
            this.indexInSegment = -1;
            return;
        }
        state$volatile$FU.set(this, clauseData);
    }

    private final void checkClauseObject(Object obj) {
        List list = this.clauses;
        Intrinsics.checkNotNull(list);
        List list2 = list;
        if ((list2 instanceof Collection) && list2.isEmpty()) {
            return;
        }
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            if (((ClauseData) it.next()).clauseObject == obj) {
                throw new IllegalStateException(("Cannot use select clauses on the same object: " + obj).toString());
            }
        }
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    public void disposeOnCompletion(DisposableHandle disposableHandle) {
        this.disposableHandleOrSegment = disposableHandle;
    }

    @Override // kotlinx.coroutines.Waiter
    public void invokeOnCancellation(Segment segment, int i) {
        this.disposableHandleOrSegment = segment;
        this.indexInSegment = i;
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    public void selectInRegistrationPhase(Object obj) {
        this.internalResult = obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void reregisterClause(Object obj) {
        ClauseData clauseDataFindClause = findClause(obj);
        Intrinsics.checkNotNull(clauseDataFindClause);
        clauseDataFindClause.disposableHandleOrSegment = null;
        clauseDataFindClause.indexInSegment = -1;
        register(clauseDataFindClause, true);
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    public boolean trySelect(Object obj, Object obj2) {
        return trySelectInternal(obj, obj2) == 0;
    }

    public final TrySelectDetailedResult trySelectDetailed(Object obj, Object obj2) {
        return SelectKt.TrySelectDetailedResult(trySelectInternal(obj, obj2));
    }

    private final int trySelectInternal(Object obj, Object obj2) {
        while (true) {
            Object obj3 = state$volatile$FU.get(this);
            if (!(obj3 instanceof CancellableContinuation)) {
                if (Intrinsics.areEqual(obj3, SelectKt.STATE_COMPLETED) || (obj3 instanceof ClauseData)) {
                    return 3;
                }
                if (Intrinsics.areEqual(obj3, SelectKt.STATE_CANCELLED)) {
                    return 2;
                }
                if (Intrinsics.areEqual(obj3, SelectKt.STATE_REG)) {
                    if (AbstractC0329xc40028dd.m112m(state$volatile$FU, this, obj3, CollectionsKt.listOf(obj))) {
                        return 1;
                    }
                } else {
                    if (!(obj3 instanceof List)) {
                        throw new IllegalStateException(("Unexpected state: " + obj3).toString());
                    }
                    if (AbstractC0329xc40028dd.m112m(state$volatile$FU, this, obj3, CollectionsKt.plus((Collection) obj3, obj))) {
                        return 1;
                    }
                }
            } else {
                ClauseData clauseDataFindClause = findClause(obj);
                if (clauseDataFindClause == null) {
                    continue;
                } else {
                    Function3 function3CreateOnCancellationAction = clauseDataFindClause.createOnCancellationAction(this, obj2);
                    if (AbstractC0329xc40028dd.m112m(state$volatile$FU, this, obj3, clauseDataFindClause)) {
                        this.internalResult = obj2;
                        if (SelectKt.tryResume((CancellableContinuation) obj3, function3CreateOnCancellationAction)) {
                            return 0;
                        }
                        this.internalResult = SelectKt.NO_RESULT;
                        return 2;
                    }
                }
            }
        }
    }

    private final ClauseData findClause(Object obj) {
        List list = this.clauses;
        Object obj2 = null;
        if (list == null) {
            return null;
        }
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (((ClauseData) next).clauseObject == obj) {
                obj2 = next;
                break;
            }
        }
        ClauseData clauseData = (ClauseData) obj2;
        if (clauseData != null) {
            return clauseData;
        }
        throw new IllegalStateException(("Clause with object " + obj + " is not found").toString());
    }

    private final Object complete(Continuation continuation) {
        Object obj = state$volatile$FU.get(this);
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation.ClauseData<R of kotlinx.coroutines.selects.SelectImplementation>");
        ClauseData clauseData = (ClauseData) obj;
        Object obj2 = this.internalResult;
        cleanup(clauseData);
        return clauseData.invokeBlock(clauseData.processResult(obj2), continuation);
    }

    private final void cleanup(ClauseData clauseData) {
        List<ClauseData> list = this.clauses;
        if (list == null) {
            return;
        }
        for (ClauseData clauseData2 : list) {
            if (clauseData2 != clauseData) {
                clauseData2.dispose();
            }
        }
        state$volatile$FU.set(this, SelectKt.STATE_COMPLETED);
        this.internalResult = SelectKt.NO_RESULT;
        this.clauses = null;
    }

    @Override // kotlinx.coroutines.CancelHandler
    public void invoke(Throwable th) {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = state$volatile$FU;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
            if (obj == SelectKt.STATE_COMPLETED) {
                return;
            }
        } while (!AbstractC0329xc40028dd.m112m(atomicReferenceFieldUpdater, this, obj, SelectKt.STATE_CANCELLED));
        List list = this.clauses;
        if (list == null) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((ClauseData) it.next()).dispose();
        }
        this.internalResult = SelectKt.NO_RESULT;
        this.clauses = null;
    }

    public final class ClauseData {
        private final Object block;
        public final Object clauseObject;
        public Object disposableHandleOrSegment;
        public int indexInSegment = -1;
        public final Function3 onCancellationConstructor;
        private final Object param;
        private final Function3 processResFunc;
        private final Function3 regFunc;

        public ClauseData(Object obj, Function3 function3, Function3 function32, Object obj2, Object obj3, Function3 function33) {
            this.clauseObject = obj;
            this.regFunc = function3;
            this.processResFunc = function32;
            this.param = obj2;
            this.block = obj3;
            this.onCancellationConstructor = function33;
        }

        public final boolean tryRegisterAsWaiter(SelectImplementation selectImplementation) {
            this.regFunc.invoke(this.clauseObject, selectImplementation, this.param);
            return selectImplementation.internalResult == SelectKt.NO_RESULT;
        }

        public final Object processResult(Object obj) {
            return this.processResFunc.invoke(this.clauseObject, this.param, obj);
        }

        public final Object invokeBlock(Object obj, Continuation continuation) {
            Object obj2 = this.block;
            if (this.param == SelectKt.getPARAM_CLAUSE_0()) {
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.coroutines.SuspendFunction0<R of kotlinx.coroutines.selects.SelectImplementation>");
                return ((Function1) obj2).invoke(continuation);
            }
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.coroutines.SuspendFunction1<kotlin.Any?, R of kotlinx.coroutines.selects.SelectImplementation>");
            return ((Function2) obj2).invoke(obj, continuation);
        }

        public final void dispose() {
            Object obj = this.disposableHandleOrSegment;
            SelectImplementation selectImplementation = SelectImplementation.this;
            if (obj instanceof Segment) {
                ((Segment) obj).onCancellation(this.indexInSegment, null, selectImplementation.getContext());
                return;
            }
            DisposableHandle disposableHandle = obj instanceof DisposableHandle ? (DisposableHandle) obj : null;
            if (disposableHandle != null) {
                disposableHandle.dispose();
            }
        }

        public final Function3 createOnCancellationAction(SelectInstance selectInstance, Object obj) {
            Function3 function3 = this.onCancellationConstructor;
            if (function3 != null) {
                return (Function3) function3.invoke(selectInstance, this.param, obj);
            }
            return null;
        }
    }
}
