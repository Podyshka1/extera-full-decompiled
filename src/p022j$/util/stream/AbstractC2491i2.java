package p022j$.util.stream;

import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.Objects;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: renamed from: j$.util.stream.i2 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2491i2 implements InterfaceC2514m2 {

    /* JADX INFO: renamed from: a */
    public final InterfaceC2529p2 f1394a;

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
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        mo907A((Double) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC2104a.m539b(this, doubleConsumer);
    }

    public AbstractC2491i2(InterfaceC2529p2 interfaceC2529p2) {
        this.f1394a = (InterfaceC2529p2) Objects.requireNonNull(interfaceC2529p2);
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public void mo873m(long j) {
        this.f1394a.mo873m(j);
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public void end() {
        this.f1394a.end();
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: p */
    public boolean mo874p() {
        return this.f1394a.mo874p();
    }
}
