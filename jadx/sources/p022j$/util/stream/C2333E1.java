package p022j$.util.stream;

import java.util.function.Consumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.C2217B;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: renamed from: j$.util.stream.E1 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2333E1 implements InterfaceC2407T1, InterfaceC2514m2 {

    /* JADX INFO: renamed from: a */
    public boolean f1119a;

    /* JADX INFO: renamed from: b */
    public double f1120b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ DoubleBinaryOperator f1121c;

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

    public C2333E1(DoubleBinaryOperator doubleBinaryOperator) {
        this.f1121c = doubleBinaryOperator;
    }

    @Override // p022j$.util.stream.InterfaceC2407T1
    /* JADX INFO: renamed from: t */
    public final void mo875t(InterfaceC2407T1 interfaceC2407T1) {
        C2333E1 c2333e1 = (C2333E1) interfaceC2407T1;
        if (c2333e1.f1119a) {
            return;
        }
        accept(c2333e1.f1120b);
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        this.f1119a = true;
        this.f1120b = 0.0d;
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final void accept(double d) {
        if (this.f1119a) {
            this.f1119a = false;
            this.f1120b = d;
        } else {
            this.f1120b = this.f1121c.applyAsDouble(this.f1120b, d);
        }
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return this.f1119a ? C2217B.f891c : new C2217B(this.f1120b);
    }
}
