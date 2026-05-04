package androidx.datastore.core;

import androidx.datastore.core.DataStoreImpl;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes.dex */
final class DataStoreImpl$incrementCollector$2$1 extends SuspendLambda implements Function2 {
    int label;
    final /* synthetic */ DataStoreImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DataStoreImpl$incrementCollector$2$1(DataStoreImpl dataStoreImpl, Continuation continuation) {
        super(2, continuation);
        this.this$0 = dataStoreImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DataStoreImpl$incrementCollector$2$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((DataStoreImpl$incrementCollector$2$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x004b, code lost:
    
        if (r5.collect(r1, r4) == r0) goto L15;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            DataStoreImpl.InitDataStore initDataStore = this.this$0.readAndInit;
            this.label = 1;
            if (initDataStore.awaitComplete(this) != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        }
        ResultKt.throwOnFailure(obj);
        Flow flowConflate = FlowKt.conflate(this.this$0.getCoordinator().getUpdateNotifications());
        final DataStoreImpl dataStoreImpl = this.this$0;
        FlowCollector flowCollector = new FlowCollector() { // from class: androidx.datastore.core.DataStoreImpl$incrementCollector$2$1.1
            @Override // kotlinx.coroutines.flow.FlowCollector
            public final Object emit(Unit unit, Continuation continuation) {
                if (!(dataStoreImpl.inMemoryCache.getCurrentState() instanceof Final)) {
                    Object dataAndUpdateCache = dataStoreImpl.readDataAndUpdateCache(true, continuation);
                    return dataAndUpdateCache == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? dataAndUpdateCache : Unit.INSTANCE;
                }
                return Unit.INSTANCE;
            }
        };
        this.label = 2;
    }
}
