package p022j$.util.stream;

import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.ObjIntConsumer;
import java.util.function.Supplier;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: renamed from: j$.util.stream.Q1 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2393Q1 extends AbstractC2412U1 implements InterfaceC2407T1, InterfaceC2519n2 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Supplier f1223b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ ObjIntConsumer f1224c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C2531q f1225d;

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final /* synthetic */ void accept(double d) {
        AbstractC2573y1.m1074z();
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
        mo954n((Integer) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC2104a.m540c(this, intConsumer);
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final /* synthetic */ void end() {
    }

    @Override // p022j$.util.stream.InterfaceC2519n2
    /* JADX INFO: renamed from: n */
    public final /* synthetic */ void mo954n(Integer num) {
        AbstractC2573y1.m1038C(this, num);
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo874p() {
        return false;
    }

    @Override // p022j$.util.stream.InterfaceC2407T1
    /* JADX INFO: renamed from: t */
    public final void mo875t(InterfaceC2407T1 interfaceC2407T1) {
        this.f1268a = this.f1225d.apply(this.f1268a, ((C2393Q1) interfaceC2407T1).f1268a);
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        this.f1268a = this.f1223b.get();
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final void accept(int i) {
        this.f1224c.accept(this.f1268a, i);
    }

    public C2393Q1(Supplier supplier, ObjIntConsumer objIntConsumer, C2531q c2531q) {
        this.f1223b = supplier;
        this.f1224c = objIntConsumer;
        this.f1225d = c2531q;
    }
}
