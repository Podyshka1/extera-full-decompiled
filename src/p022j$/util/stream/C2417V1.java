package p022j$.util.stream;

import java.util.function.DoubleConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;

/* JADX INFO: renamed from: j$.util.stream.V1 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2417V1 extends AbstractC2437Z1 implements InterfaceC2514m2 {
    @Override // p022j$.util.stream.InterfaceC2514m2
    /* JADX INFO: renamed from: A */
    public final /* synthetic */ void mo907A(Double d) {
        AbstractC2573y1.m1036A(this, d);
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m940v(Object obj) {
        mo907A((Double) obj);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC2104a.m539b(this, doubleConsumer);
    }

    @Override // p022j$.util.stream.AbstractC2412U1, java.util.function.Supplier
    public final Object get() {
        return Long.valueOf(this.f1288b);
    }

    @Override // p022j$.util.stream.InterfaceC2407T1
    /* JADX INFO: renamed from: t */
    public final void mo875t(InterfaceC2407T1 interfaceC2407T1) {
        this.f1288b += ((AbstractC2437Z1) interfaceC2407T1).f1288b;
    }

    @Override // p022j$.util.stream.AbstractC2437Z1, p022j$.util.stream.InterfaceC2529p2
    public final void accept(double d) {
        this.f1288b++;
    }
}
