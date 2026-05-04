package p022j$.util.stream;

import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: renamed from: j$.util.stream.G1 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2343G1 extends AbstractC2412U1 implements InterfaceC2407T1, InterfaceC2514m2 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Supplier f1139b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ ObjDoubleConsumer f1140c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C2531q f1141d;

    @Override // p022j$.util.stream.InterfaceC2514m2
    /* JADX INFO: renamed from: A */
    public final /* synthetic */ void mo907A(Double d) {
        AbstractC2573y1.m1036A(this, d);
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final /* synthetic */ void accept(int i) {
        AbstractC2573y1.m1042G();
        throw null;
    }

    @Override // p022j$.util.stream.InterfaceC2529p2, p022j$.util.stream.InterfaceC2524o2, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j) {
        AbstractC2573y1.m1043H();
        throw null;
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m940v(Object obj) {
        mo907A((Double) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC2104a.m539b(this, doubleConsumer);
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final /* synthetic */ void end() {
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo874p() {
        return false;
    }

    @Override // p022j$.util.stream.InterfaceC2407T1
    /* JADX INFO: renamed from: t */
    public final void mo875t(InterfaceC2407T1 interfaceC2407T1) {
        this.f1268a = this.f1141d.apply(this.f1268a, ((C2343G1) interfaceC2407T1).f1268a);
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        this.f1268a = this.f1139b.get();
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final void accept(double d) {
        this.f1140c.accept(this.f1268a, d);
    }

    public C2343G1(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, C2531q c2531q) {
        this.f1139b = supplier;
        this.f1140c = objDoubleConsumer;
        this.f1141d = c2531q;
    }
}
