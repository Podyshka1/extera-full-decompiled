package p022j$.util.stream;

import java.util.function.Consumer;
import java.util.function.LongConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.C2184s;
import p022j$.util.InterfaceC2240Z;
import p022j$.util.InterfaceC2246c0;
import p022j$.util.Objects;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.s3 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2545s3 extends AbstractC2474f3 implements InterfaceC2240Z {
    @Override // p022j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2104a.m549l(this, consumer);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC2104a.m516B(this, consumer);
    }

    @Override // p022j$.util.stream.AbstractC2474f3
    /* JADX INFO: renamed from: e */
    public final AbstractC2474f3 mo924e(Spliterator spliterator) {
        return new C2545s3(this.f1372b, spliterator, this.f1371a);
    }

    @Override // p022j$.util.stream.AbstractC2474f3
    /* JADX INFO: renamed from: d */
    public final void mo923d() {
        C2428X2 c2428x2 = new C2428X2();
        this.f1378h = c2428x2;
        Objects.requireNonNull(c2428x2);
        this.f1375e = this.f1372b.mo983t0(new C2540r3(c2428x2, 1));
        this.f1376f = new C2184s(13, this);
    }

    @Override // p022j$.util.stream.AbstractC2474f3, p022j$.util.Spliterator
    public final Spliterator trySplit() {
        return (InterfaceC2240Z) super.trySplit();
    }

    @Override // p022j$.util.stream.AbstractC2474f3, p022j$.util.Spliterator
    public final InterfaceC2240Z trySplit() {
        return (InterfaceC2240Z) super.trySplit();
    }

    @Override // p022j$.util.stream.AbstractC2474f3, p022j$.util.Spliterator
    public final InterfaceC2246c0 trySplit() {
        return (InterfaceC2240Z) super.trySplit();
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final boolean tryAdvance(LongConsumer longConsumer) {
        long j;
        Objects.requireNonNull(longConsumer);
        boolean zM1006a = m1006a();
        if (zM1006a) {
            C2428X2 c2428x2 = (C2428X2) this.f1378h;
            long j2 = this.f1377g;
            int iM972k = c2428x2.m972k(j2);
            if (c2428x2.f1328c == 0 && iM972k == 0) {
                j = ((long[]) c2428x2.f1289e)[(int) j2];
            } else {
                j = ((long[][]) c2428x2.f1290f)[iM972k][(int) (j2 - c2428x2.f1329d[iM972k])];
            }
            longConsumer.accept(j);
        }
        return zM1006a;
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final void forEachRemaining(LongConsumer longConsumer) {
        if (this.f1378h == null && !this.f1379i) {
            Objects.requireNonNull(longConsumer);
            m1008c();
            Objects.requireNonNull(longConsumer);
            C2540r3 c2540r3 = new C2540r3(longConsumer, 0);
            this.f1372b.mo982s0(this.f1374d, c2540r3);
            this.f1379i = true;
            return;
        }
        while (tryAdvance(longConsumer)) {
        }
    }
}
