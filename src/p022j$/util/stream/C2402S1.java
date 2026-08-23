package p022j$.util.stream;

import java.util.function.Consumer;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.C2218C;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: renamed from: j$.util.stream.S1 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2402S1 implements InterfaceC2407T1, InterfaceC2524o2 {

    /* JADX INFO: renamed from: a */
    public boolean f1244a;

    /* JADX INFO: renamed from: b */
    public long f1245b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ LongBinaryOperator f1246c;

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final /* synthetic */ void accept(double d) {
        AbstractC2573y1.m1074z();
        throw null;
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final /* synthetic */ void accept(int i) {
        AbstractC2573y1.m1042G();
        throw null;
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m940v(Object obj) {
        mo876v((Long) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC2104a.m541d(this, longConsumer);
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final /* synthetic */ void end() {
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo874p() {
        return false;
    }

    @Override // p022j$.util.stream.InterfaceC2524o2
    /* JADX INFO: renamed from: v */
    public final /* synthetic */ void mo876v(Long l) {
        AbstractC2573y1.m1040E(this, l);
    }

    public C2402S1(LongBinaryOperator longBinaryOperator) {
        this.f1246c = longBinaryOperator;
    }

    @Override // p022j$.util.stream.InterfaceC2407T1
    /* JADX INFO: renamed from: t */
    public final void mo875t(InterfaceC2407T1 interfaceC2407T1) {
        C2402S1 c2402s1 = (C2402S1) interfaceC2407T1;
        if (c2402s1.f1244a) {
            return;
        }
        accept(c2402s1.f1245b);
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        this.f1244a = true;
        this.f1245b = 0L;
    }

    @Override // p022j$.util.stream.InterfaceC2529p2, p022j$.util.stream.InterfaceC2524o2, java.util.function.LongConsumer
    public final void accept(long j) {
        if (this.f1244a) {
            this.f1244a = false;
            this.f1245b = j;
        } else {
            this.f1245b = this.f1246c.applyAsLong(this.f1245b, j);
        }
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return this.f1244a ? C2218C.f896c : new C2218C(this.f1245b);
    }
}
