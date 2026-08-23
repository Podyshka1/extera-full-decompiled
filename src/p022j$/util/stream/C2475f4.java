package p022j$.util.stream;

import java.util.function.IntConsumer;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.f4 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2475f4 extends AbstractC2481g4 {
    @Override // p022j$.util.stream.AbstractC2499j4
    /* JADX INFO: renamed from: b */
    public final Spliterator mo1002b(Spliterator spliterator) {
        return new C2475f4((Spliterator.OfInt) spliterator, this);
    }

    @Override // j$.util.Spliterator.OfInt
    public final boolean tryAdvance(IntConsumer intConsumer) {
        boolean zTest;
        if (this.f1404c && m1011a() && ((Spliterator.OfInt) this.f1402a).tryAdvance((IntConsumer) this)) {
            zTest = this.f1385e.test(this.f1386f);
            if (zTest) {
                intConsumer.accept(this.f1386f);
                return true;
            }
        } else {
            zTest = true;
        }
        this.f1404c = false;
        if (!zTest) {
            this.f1403b.set(true);
        }
        return false;
    }

    @Override // p022j$.util.stream.AbstractC2499j4, p022j$.util.Spliterator
    public final Spliterator.OfInt trySplit() {
        if (this.f1403b.get()) {
            return null;
        }
        return (Spliterator.OfInt) super.trySplit();
    }
}
