package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.C2078B;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;

/* JADX INFO: loaded from: classes2.dex */
public final class E1 implements T1, InterfaceC6230m2 {

    /* JADX INFO: renamed from: a */
    public boolean f884a;

    /* JADX INFO: renamed from: b */
    public double f885b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ DoubleBinaryOperator f886c;

    @Override // j$.util.stream.InterfaceC6230m2
    /* JADX INFO: renamed from: A */
    public final /* synthetic */ void mo771A(Double d) {
        AbstractC6277y1.m882A(this, d);
    }

    @Override // j$.util.stream.InterfaceC6242p2
    public final /* synthetic */ void accept(int i) {
        AbstractC6277y1.m888G();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC6242p2, j$.util.stream.InterfaceC6238o2, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j) {
        AbstractC6277y1.m889H();
        throw null;
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m800v(Object obj) {
        mo771A((Double) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC1965a.m419b(this, doubleConsumer);
    }

    @Override // j$.util.stream.InterfaceC6242p2
    public final /* synthetic */ void end() {
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo745p() {
        return false;
    }

    public E1(DoubleBinaryOperator doubleBinaryOperator) {
        this.f886c = doubleBinaryOperator;
    }

    @Override // j$.util.stream.T1
    /* JADX INFO: renamed from: t */
    public final void mo746t(T1 t1) {
        E1 e1 = (E1) t1;
        if (e1.f884a) {
            return;
        }
        accept(e1.f885b);
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final void mo744m(long j) {
        this.f884a = true;
        this.f885b = 0.0d;
    }

    @Override // j$.util.stream.InterfaceC6242p2
    public final void accept(double d) {
        if (this.f884a) {
            this.f884a = false;
            this.f885b = d;
        } else {
            this.f885b = this.f886c.applyAsDouble(this.f885b, d);
        }
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return this.f884a ? C2078B.f656c : new C2078B(this.f885b);
    }
}
