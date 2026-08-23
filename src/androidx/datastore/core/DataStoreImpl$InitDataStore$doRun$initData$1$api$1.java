package androidx.datastore.core;

import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class DataStoreImpl$InitDataStore$doRun$initData$1$api$1 implements InitializerApi {
    final /* synthetic */ Ref$ObjectRef $currentData;
    final /* synthetic */ Ref$BooleanRef $initializationComplete;
    final /* synthetic */ Mutex $updateLock;
    final /* synthetic */ DataStoreImpl this$0;

    DataStoreImpl$InitDataStore$doRun$initData$1$api$1(Mutex mutex, Ref$BooleanRef ref$BooleanRef, Ref$ObjectRef ref$ObjectRef, DataStoreImpl dataStoreImpl) {
        this.$updateLock = mutex;
        this.$initializationComplete = ref$BooleanRef;
        this.$currentData = ref$ObjectRef;
        this.this$0 = dataStoreImpl;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00ba A[Catch: all -> 0x0056, TRY_LEAVE, TryCatch #0 {all -> 0x0056, blocks: (B:21:0x0052, B:36:0x00b2, B:38:0x00ba), top: B:53:0x0052 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // androidx.datastore.core.InitializerApi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object updateData(Function2 function2, Continuation continuation) throws Throwable {
        DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1 dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;
        Mutex mutex;
        DataStoreImpl dataStoreImpl;
        Ref$BooleanRef ref$BooleanRef;
        Ref$ObjectRef ref$ObjectRef;
        Mutex mutex2;
        Mutex mutex3;
        DataStoreImpl dataStoreImpl2;
        Object obj;
        Ref$ObjectRef ref$ObjectRef2;
        if (continuation instanceof DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1) {
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1 = (DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1) continuation;
            int i = dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.label = i - Integer.MIN_VALUE;
            } else {
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1 = new DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1(this, continuation);
            }
        }
        Object obj2 = dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.label;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj2);
                mutex = this.$updateLock;
                Ref$BooleanRef ref$BooleanRef2 = this.$initializationComplete;
                Ref$ObjectRef ref$ObjectRef3 = this.$currentData;
                dataStoreImpl = this.this$0;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$0 = function2;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$1 = mutex;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$2 = ref$BooleanRef2;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$3 = ref$ObjectRef3;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$4 = dataStoreImpl;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.label = 1;
                if (mutex.lock(null, dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1) != coroutine_suspended) {
                    ref$BooleanRef = ref$BooleanRef2;
                    ref$ObjectRef = ref$ObjectRef3;
                }
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    obj = dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$2;
                    ref$ObjectRef2 = (Ref$ObjectRef) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$1;
                    mutex2 = (Mutex) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$0;
                    try {
                        ResultKt.throwOnFailure(obj2);
                        ref$ObjectRef2.element = obj;
                        ref$ObjectRef = ref$ObjectRef2;
                        Object obj3 = ref$ObjectRef.element;
                        mutex2.unlock(null);
                        return obj3;
                    } catch (Throwable th) {
                        th = th;
                        mutex2.unlock(null);
                        throw th;
                    }
                }
                dataStoreImpl2 = (DataStoreImpl) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$2;
                ref$ObjectRef = (Ref$ObjectRef) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$1;
                mutex3 = (Mutex) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$0;
                try {
                    ResultKt.throwOnFailure(obj2);
                    if (Intrinsics.areEqual(obj2, ref$ObjectRef.element)) {
                        dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$0 = mutex3;
                        dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$1 = ref$ObjectRef;
                        dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$2 = obj2;
                        dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.label = 3;
                        if (dataStoreImpl2.writeData$datastore_core_release(obj2, false, dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1) != coroutine_suspended) {
                            obj = obj2;
                            ref$ObjectRef2 = ref$ObjectRef;
                            mutex2 = mutex3;
                            ref$ObjectRef2.element = obj;
                            ref$ObjectRef = ref$ObjectRef2;
                            Object obj32 = ref$ObjectRef.element;
                            mutex2.unlock(null);
                            return obj32;
                        }
                        return coroutine_suspended;
                    }
                    mutex2 = mutex3;
                    Object obj322 = ref$ObjectRef.element;
                    mutex2.unlock(null);
                    return obj322;
                } catch (Throwable th2) {
                    th = th2;
                    mutex2 = mutex3;
                    mutex2.unlock(null);
                    throw th;
                }
            }
            DataStoreImpl dataStoreImpl3 = (DataStoreImpl) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$4;
            ref$ObjectRef = (Ref$ObjectRef) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$3;
            ref$BooleanRef = (Ref$BooleanRef) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$2;
            Mutex mutex4 = (Mutex) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$1;
            Function2 function22 = (Function2) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$0;
            ResultKt.throwOnFailure(obj2);
            dataStoreImpl = dataStoreImpl3;
            function2 = function22;
            mutex = mutex4;
            if (ref$BooleanRef.element) {
                throw new IllegalStateException("InitializerApi.updateData should not be called after initialization is complete.");
            }
            Object obj4 = ref$ObjectRef.element;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$0 = mutex;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$1 = ref$ObjectRef;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$2 = dataStoreImpl;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$3 = null;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.L$4 = null;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.label = 2;
            Object objInvoke = function2.invoke(obj4, dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1);
            if (objInvoke != coroutine_suspended) {
                mutex3 = mutex;
                obj2 = objInvoke;
                dataStoreImpl2 = dataStoreImpl;
                if (Intrinsics.areEqual(obj2, ref$ObjectRef.element)) {
                }
            }
            return coroutine_suspended;
        } catch (Throwable th3) {
            th = th3;
            mutex2 = mutex;
            mutex2.unlock(null);
            throw th;
        }
    }
}
