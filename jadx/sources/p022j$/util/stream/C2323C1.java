package p022j$.util.stream;

import java.util.function.Consumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: renamed from: j$.util.stream.C1 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2323C1 implements InterfaceC2407T1, InterfaceC2514m2 {

    /* JADX INFO: renamed from: a */
    public double f1103a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ double f1104b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ DoubleBinaryOperator f1105c;

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

    public C2323C1(double d, DoubleBinaryOperator doubleBinaryOperator) {
        this.f1104b = d;
        this.f1105c = doubleBinaryOperator;
    }

    @Override // p022j$.util.stream.InterfaceC2407T1
    /* JADX INFO: renamed from: t */
    public final void mo875t(InterfaceC2407T1 interfaceC2407T1) {
        accept(((C2323C1) interfaceC2407T1).f1103a);
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        this.f1103a = this.f1104b;
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final void accept(double d) {
        this.f1103a = this.f1105c.applyAsDouble(this.f1103a, d);
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return Double.valueOf(this.f1103a);
    }
}
