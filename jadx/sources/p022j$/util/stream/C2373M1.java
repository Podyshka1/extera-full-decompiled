package p022j$.util.stream;

import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Supplier;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: renamed from: j$.util.stream.M1 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2373M1 extends AbstractC2412U1 implements InterfaceC2407T1 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Supplier f1194b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ BiConsumer f1195c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ BiConsumer f1196d;

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

    @Override // p022j$.util.stream.InterfaceC2529p2, p022j$.util.stream.InterfaceC2524o2, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j) {
        AbstractC2573y1.m1043H();
        throw null;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
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
        this.f1196d.accept(this.f1268a, ((C2373M1) interfaceC2407T1).f1268a);
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        this.f1268a = this.f1194b.get();
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final void m940v(Object obj) {
        this.f1195c.accept(this.f1268a, obj);
    }

    public C2373M1(Supplier supplier, BiConsumer biConsumer, BiConsumer biConsumer2) {
        this.f1194b = supplier;
        this.f1195c = biConsumer;
        this.f1196d = biConsumer2;
    }
}
