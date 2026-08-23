package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(m754k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(m765c = "androidx.datastore.core.DataStoreImpl$InitDataStore", m766f = "DataStoreImpl.kt", m767i = {0, 1}, m768l = {430, 434}, m769m = "doRun", m770n = {"this", "this"}, m771s = {"L$0", "L$0"})
public final class DataStoreImpl$InitDataStore$doRun$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ DataStoreImpl<T>.InitDataStore this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$InitDataStore$doRun$1(DataStoreImpl<T>.InitDataStore initDataStore, Continuation<? super DataStoreImpl$InitDataStore$doRun$1> continuation) {
        super(continuation);
        this.this$0 = initDataStore;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.doRun(this);
    }
}
