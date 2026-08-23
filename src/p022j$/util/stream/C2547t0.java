package p022j$.util.stream;

import java.util.function.DoubleConsumer;
import java.util.function.DoublePredicate;
import p022j$.com.android.tools.p023r8.AbstractC2104a;

/* JADX INFO: renamed from: j$.util.stream.t0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2547t0 extends AbstractC2552u0 implements InterfaceC2514m2 {
    @Override // p022j$.util.stream.InterfaceC2514m2
    /* JADX INFO: renamed from: A */
    public final /* synthetic */ void mo907A(Double d) {
        AbstractC2573y1.m1036A(this, d);
    }

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        mo907A((Double) obj);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC2104a.m539b(this, doubleConsumer);
    }

    @Override // p022j$.util.stream.AbstractC2552u0, p022j$.util.stream.InterfaceC2529p2
    public final void accept(double d) {
        if (this.f1483a) {
            return;
        }
        DoublePredicate doublePredicate = null;
        doublePredicate.test(d);
        throw null;
    }
}
