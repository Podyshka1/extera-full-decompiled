package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
public final class ThrowingCollector implements FlowCollector {

    /* JADX INFO: renamed from: e */
    public final Throwable f1542e;

    public ThrowingCollector(Throwable th) {
        this.f1542e = th;
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public Object emit(Object obj, Continuation continuation) throws Throwable {
        throw this.f1542e;
    }
}
