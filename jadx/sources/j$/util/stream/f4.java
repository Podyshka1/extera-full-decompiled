package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntConsumer;

/* JADX INFO: loaded from: classes2.dex */
public final class f4 extends g4 {
    @Override // j$.util.stream.j4
    /* JADX INFO: renamed from: b */
    public final Spliterator mo851b(Spliterator spliterator) {
        return new f4((Spliterator.OfInt) spliterator, this);
    }

    @Override // j$.util.Spliterator.OfInt
    public final boolean tryAdvance(IntConsumer intConsumer) {
        boolean zTest;
        if (this.f1168c && m860a() && ((Spliterator.OfInt) this.f1166a).tryAdvance((IntConsumer) this)) {
            zTest = this.f1149e.test(this.f1150f);
            if (zTest) {
                intConsumer.accept(this.f1150f);
                return true;
            }
        } else {
            zTest = true;
        }
        this.f1168c = false;
        if (!zTest) {
            this.f1167b.set(true);
        }
        return false;
    }

    @Override // j$.util.stream.j4, j$.util.Spliterator
    public final Spliterator.OfInt trySplit() {
        if (this.f1167b.get()) {
            return null;
        }
        return (Spliterator.OfInt) super.trySplit();
    }
}
