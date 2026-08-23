package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import java.util.function.DoubleConsumer;

/* JADX INFO: loaded from: classes2.dex */
public final class V1 extends Z1 implements InterfaceC6230m2 {
    @Override // j$.util.stream.InterfaceC6230m2
    /* JADX INFO: renamed from: A */
    public final /* synthetic */ void mo771A(Double d) {
        AbstractC6277y1.m882A(this, d);
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m800v(Object obj) {
        mo771A((Double) obj);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC1965a.m419b(this, doubleConsumer);
    }

    @Override // j$.util.stream.U1, java.util.function.Supplier
    public final Object get() {
        return Long.valueOf(this.f1053b);
    }

    @Override // j$.util.stream.T1
    /* JADX INFO: renamed from: t */
    public final void mo746t(T1 t1) {
        this.f1053b += ((Z1) t1).f1053b;
    }

    @Override // j$.util.stream.Z1, j$.util.stream.InterfaceC6242p2
    public final void accept(double d) {
        this.f1053b++;
    }
}
