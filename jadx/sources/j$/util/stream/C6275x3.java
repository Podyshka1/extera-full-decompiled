package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.Consumer;

/* JADX INFO: renamed from: j$.util.stream.x3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6275x3 extends AbstractC6279y3 implements Spliterator {
    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC1965a.m432o(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC1965a.m434q(this, i);
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }

    public C6275x3(Spliterator spliterator, long j, long j2) {
        super(spliterator, j, j2, 0L, Math.min(spliterator.estimateSize(), j2));
    }

    @Override // j$.util.stream.AbstractC6279y3
    /* JADX INFO: renamed from: a */
    public final Spliterator mo879a(Spliterator spliterator, long j, long j2, long j3, long j4) {
        return new C6275x3(spliterator, j, j2, j3, j4);
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        long j;
        Objects.requireNonNull(consumer);
        long j2 = this.f1285e;
        long j3 = this.f1281a;
        if (j3 >= j2) {
            return false;
        }
        while (true) {
            j = this.f1284d;
            if (j3 <= j) {
                break;
            }
            this.f1283c.tryAdvance(new C6192d0(14));
            this.f1284d++;
        }
        if (j >= this.f1285e) {
            return false;
        }
        this.f1284d = j + 1;
        return this.f1283c.tryAdvance(consumer);
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        long j = this.f1285e;
        long j2 = this.f1281a;
        if (j2 >= j) {
            return;
        }
        long j3 = this.f1284d;
        if (j3 >= j) {
            return;
        }
        if (j3 >= j2 && this.f1283c.estimateSize() + j3 <= this.f1282b) {
            this.f1283c.forEachRemaining(consumer);
            this.f1284d = this.f1285e;
            return;
        }
        while (j2 > this.f1284d) {
            this.f1283c.tryAdvance(new C6192d0(15));
            this.f1284d++;
        }
        while (this.f1284d < this.f1285e) {
            this.f1283c.tryAdvance(consumer);
            this.f1284d++;
        }
    }
}
