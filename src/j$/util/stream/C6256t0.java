package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import java.util.function.DoubleConsumer;
import java.util.function.DoublePredicate;

/* JADX INFO: renamed from: j$.util.stream.t0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6256t0 extends AbstractC6260u0 implements InterfaceC6230m2 {
    @Override // j$.util.stream.InterfaceC6230m2
    /* JADX INFO: renamed from: A */
    public final /* synthetic */ void mo771A(Double d) {
        AbstractC6277y1.m882A(this, d);
    }

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        mo771A((Double) obj);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC1965a.m419b(this, doubleConsumer);
    }

    @Override // j$.util.stream.AbstractC6260u0, j$.util.stream.InterfaceC6242p2
    public final void accept(double d) {
        if (this.f1247a) {
            return;
        }
        DoublePredicate doublePredicate = null;
        doublePredicate.test(d);
        throw null;
    }
}
