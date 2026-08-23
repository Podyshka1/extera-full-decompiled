package androidx.room.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m765c = "androidx.room.coroutines.Pool", m766f = "ConnectionPoolImpl.kt", m767i = {0, 0, 0}, m768l = {231}, m769m = "acquireWithTimeout-KLykuaI", m770n = {"onTimeout", "connection", "timeout"}, m771s = {"L$0", "L$1", "J$0"})
public final class Pool$acquireWithTimeout$1 extends ContinuationImpl {
    long J$0;
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ Pool this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Pool$acquireWithTimeout$1(Pool pool, Continuation<? super Pool$acquireWithTimeout$1> continuation) {
        super(continuation);
        this.this$0 = pool;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.m1751acquireWithTimeoutKLykuaI(0L, null, this);
    }
}
