package p022j$.util.stream;

import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.C2184s;
import p022j$.util.InterfaceC2235U;
import p022j$.util.InterfaceC2246c0;
import p022j$.util.Objects;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.o3 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2525o3 extends AbstractC2474f3 implements InterfaceC2235U {
    @Override // p022j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2104a.m547j(this, consumer);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC2104a.m563z(this, consumer);
    }

    @Override // p022j$.util.stream.AbstractC2474f3
    /* JADX INFO: renamed from: e */
    public final AbstractC2474f3 mo924e(Spliterator spliterator) {
        return new C2525o3(this.f1372b, spliterator, this.f1371a);
    }

    @Override // p022j$.util.stream.AbstractC2474f3
    /* JADX INFO: renamed from: d */
    public final void mo923d() {
        C2408T2 c2408t2 = new C2408T2();
        this.f1378h = c2408t2;
        Objects.requireNonNull(c2408t2);
        this.f1375e = this.f1372b.mo983t0(new C2520n3(c2408t2, 1));
        this.f1376f = new C2184s(11, this);
    }

    @Override // p022j$.util.stream.AbstractC2474f3, p022j$.util.Spliterator
    public final Spliterator trySplit() {
        return (InterfaceC2235U) super.trySplit();
    }

    @Override // p022j$.util.stream.AbstractC2474f3, p022j$.util.Spliterator
    public final InterfaceC2235U trySplit() {
        return (InterfaceC2235U) super.trySplit();
    }

    @Override // p022j$.util.stream.AbstractC2474f3, p022j$.util.Spliterator
    public final InterfaceC2246c0 trySplit() {
        return (InterfaceC2235U) super.trySplit();
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final boolean tryAdvance(DoubleConsumer doubleConsumer) {
        double d;
        Objects.requireNonNull(doubleConsumer);
        boolean zM1006a = m1006a();
        if (zM1006a) {
            C2408T2 c2408t2 = (C2408T2) this.f1378h;
            long j = this.f1377g;
            int iM972k = c2408t2.m972k(j);
            if (c2408t2.f1328c == 0 && iM972k == 0) {
                d = ((double[]) c2408t2.f1289e)[(int) j];
            } else {
                d = ((double[][]) c2408t2.f1290f)[iM972k][(int) (j - c2408t2.f1329d[iM972k])];
            }
            doubleConsumer.accept(d);
        }
        return zM1006a;
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final void forEachRemaining(DoubleConsumer doubleConsumer) {
        if (this.f1378h == null && !this.f1379i) {
            Objects.requireNonNull(doubleConsumer);
            m1008c();
            Objects.requireNonNull(doubleConsumer);
            C2520n3 c2520n3 = new C2520n3(doubleConsumer, 0);
            this.f1372b.mo982s0(this.f1374d, c2520n3);
            this.f1379i = true;
            return;
        }
        while (tryAdvance(doubleConsumer)) {
        }
    }
}
