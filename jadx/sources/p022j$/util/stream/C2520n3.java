package p022j$.util.stream;

import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: renamed from: j$.util.stream.n3 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2520n3 implements InterfaceC2514m2 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1438a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ DoubleConsumer f1439b;

    public /* synthetic */ C2520n3(DoubleConsumer doubleConsumer, int i) {
        this.f1438a = i;
        this.f1439b = doubleConsumer;
    }

    /* JADX INFO: renamed from: a */
    private final /* synthetic */ void m1018a(long j) {
    }

    /* JADX INFO: renamed from: b */
    private final /* synthetic */ void m1019b(long j) {
    }

    /* JADX INFO: renamed from: c */
    private final /* synthetic */ void m1020c() {
    }

    /* JADX INFO: renamed from: d */
    private final /* synthetic */ void m1021d() {
    }

    @Override // p022j$.util.stream.InterfaceC2514m2
    /* JADX INFO: renamed from: A */
    public final /* synthetic */ void mo907A(Double d) {
        switch (this.f1438a) {
            case 0:
                AbstractC2573y1.m1036A(this, d);
                break;
            default:
                AbstractC2573y1.m1036A(this, d);
                break;
        }
    }

    @Override // p022j$.util.stream.InterfaceC2514m2, p022j$.util.stream.InterfaceC2529p2
    public final void accept(double d) {
        switch (this.f1438a) {
            case 0:
                this.f1439b.accept(d);
                break;
            default:
                ((C2408T2) this.f1439b).accept(d);
                break;
        }
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final /* synthetic */ void accept(int i) {
        switch (this.f1438a) {
            case 0:
                AbstractC2573y1.m1042G();
                throw null;
            default:
                AbstractC2573y1.m1042G();
                throw null;
        }
    }

    @Override // p022j$.util.stream.InterfaceC2529p2, p022j$.util.stream.InterfaceC2524o2, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j) {
        switch (this.f1438a) {
            case 0:
                AbstractC2573y1.m1043H();
                throw null;
            default:
                AbstractC2573y1.m1043H();
                throw null;
        }
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m940v(Object obj) {
        switch (this.f1438a) {
            case 0:
                mo907A((Double) obj);
                break;
            default:
                mo907A((Double) obj);
                break;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1438a) {
        }
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        switch (this.f1438a) {
        }
        return AbstractC2104a.m539b(this, doubleConsumer);
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final /* synthetic */ void end() {
        int i = this.f1438a;
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final /* synthetic */ void mo873m(long j) {
        int i = this.f1438a;
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo874p() {
        switch (this.f1438a) {
        }
        return false;
    }
}
