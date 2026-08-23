package p022j$.util.stream;

import java.util.function.IntConsumer;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.e4 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2469e4 extends AbstractC2481g4 {
    @Override // p022j$.util.stream.AbstractC2499j4
    /* JADX INFO: renamed from: b */
    public final Spliterator mo1002b(Spliterator spliterator) {
        return new C2469e4((Spliterator.OfInt) spliterator, this);
    }

    @Override // j$.util.Spliterator.OfInt
    public final boolean tryAdvance(IntConsumer intConsumer) {
        boolean zTryAdvance;
        boolean z = this.f1404c;
        Spliterator spliterator = this.f1402a;
        if (z) {
            boolean z2 = false;
            this.f1404c = false;
            while (true) {
                zTryAdvance = ((Spliterator.OfInt) spliterator).tryAdvance((IntConsumer) this);
                if (!zTryAdvance || !m1011a() || !this.f1385e.test(this.f1386f)) {
                    break;
                }
                z2 = true;
            }
            if (zTryAdvance) {
                if (z2) {
                    this.f1403b.set(true);
                }
                intConsumer.accept(this.f1386f);
            }
            return zTryAdvance;
        }
        return ((Spliterator.OfInt) spliterator).tryAdvance(intConsumer);
    }
}
