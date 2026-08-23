package p022j$.util.stream;

import java.util.function.Consumer;
import java.util.function.IntBinaryOperator;
import java.util.function.IntConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.OptionalInt;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: renamed from: j$.util.stream.P1 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2388P1 implements InterfaceC2407T1, InterfaceC2519n2 {

    /* JADX INFO: renamed from: a */
    public boolean f1215a;

    /* JADX INFO: renamed from: b */
    public int f1216b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ IntBinaryOperator f1217c;

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

    public C2388P1(IntBinaryOperator intBinaryOperator) {
        this.f1217c = intBinaryOperator;
    }

    @Override // p022j$.util.stream.InterfaceC2407T1
    /* JADX INFO: renamed from: t */
    public final void mo875t(InterfaceC2407T1 interfaceC2407T1) {
        C2388P1 c2388p1 = (C2388P1) interfaceC2407T1;
        if (c2388p1.f1215a) {
            return;
        }
        accept(c2388p1.f1216b);
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        this.f1215a = true;
        this.f1216b = 0;
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final void accept(int i) {
        if (this.f1215a) {
            this.f1215a = false;
            this.f1216b = i;
        } else {
            this.f1216b = this.f1217c.applyAsInt(this.f1216b, i);
        }
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return this.f1215a ? OptionalInt.f913c : new OptionalInt(this.f1216b);
    }
}
