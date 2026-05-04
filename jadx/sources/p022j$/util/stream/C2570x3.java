package p022j$.util.stream;

import java.util.Comparator;
import java.util.function.Consumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.Objects;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.x3 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2570x3 extends AbstractC2575y3 implements Spliterator {
    @Override // p022j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2104a.m552o(this);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2104a.m554q(this, i);
    }

    @Override // p022j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }

    public C2570x3(Spliterator spliterator, long j, long j2) {
        super(spliterator, j, j2, 0L, Math.min(spliterator.estimateSize(), j2));
    }

    @Override // p022j$.util.stream.AbstractC2575y3
    /* JADX INFO: renamed from: a */
    public final Spliterator mo1033a(Spliterator spliterator, long j, long j2, long j3, long j4) {
        return new C2570x3(spliterator, j, j2, j3, j4);
    }

    @Override // p022j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        long j;
        Objects.requireNonNull(consumer);
        long j2 = this.f1521e;
        long j3 = this.f1517a;
        if (j3 >= j2) {
            return false;
        }
        while (true) {
            j = this.f1520d;
            if (j3 <= j) {
                break;
            }
            this.f1519c.tryAdvance(new C2459d0(14));
            this.f1520d++;
        }
        if (j >= this.f1521e) {
            return false;
        }
        this.f1520d = j + 1;
        return this.f1519c.tryAdvance(consumer);
    }

    @Override // p022j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        long j = this.f1521e;
        long j2 = this.f1517a;
        if (j2 >= j) {
            return;
        }
        long j3 = this.f1520d;
        if (j3 >= j) {
            return;
        }
        if (j3 >= j2 && this.f1519c.estimateSize() + j3 <= this.f1518b) {
            this.f1519c.forEachRemaining(consumer);
            this.f1520d = this.f1521e;
            return;
        }
        while (j2 > this.f1520d) {
            this.f1519c.tryAdvance(new C2459d0(15));
            this.f1520d++;
        }
        while (this.f1520d < this.f1521e) {
            this.f1519c.tryAdvance(consumer);
            this.f1520d++;
        }
    }
}
