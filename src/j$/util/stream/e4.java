package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntConsumer;

/* JADX INFO: loaded from: classes2.dex */
public final class e4 extends g4 {
    @Override // j$.util.stream.j4
    /* JADX INFO: renamed from: b */
    public final Spliterator mo851b(Spliterator spliterator) {
        return new e4((Spliterator.OfInt) spliterator, this);
    }

    @Override // j$.util.Spliterator.OfInt
    public final boolean tryAdvance(IntConsumer intConsumer) {
        boolean zTryAdvance;
        boolean z = this.f1168c;
        Spliterator spliterator = this.f1166a;
        if (z) {
            boolean z2 = false;
            this.f1168c = false;
            while (true) {
                zTryAdvance = ((Spliterator.OfInt) spliterator).tryAdvance((IntConsumer) this);
                if (!zTryAdvance || !m860a() || !this.f1149e.test(this.f1150f)) {
                    break;
                }
                z2 = true;
            }
            if (zTryAdvance) {
                if (z2) {
                    this.f1167b.set(true);
                }
                intConsumer.accept(this.f1150f);
            }
            return zTryAdvance;
        }
        return ((Spliterator.OfInt) spliterator).tryAdvance(intConsumer);
    }
}
