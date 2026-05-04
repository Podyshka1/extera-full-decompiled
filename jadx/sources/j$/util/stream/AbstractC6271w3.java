package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.Objects;
import java.util.Comparator;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* JADX INFO: renamed from: j$.util.stream.w3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC6271w3 extends AbstractC6279y3 implements j$.util.c0 {
    /* JADX INFO: renamed from: b */
    public abstract Object mo880b();

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

    public AbstractC6271w3(j$.util.c0 c0Var, long j, long j2) {
        super(c0Var, j, j2, 0L, Math.min(c0Var.estimateSize(), j2));
    }

    @Override // j$.util.c0
    public final boolean tryAdvance(Object obj) {
        long j;
        Objects.requireNonNull(obj);
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
            ((j$.util.c0) this.f1283c).tryAdvance(mo880b());
            this.f1284d++;
        }
        if (j >= this.f1285e) {
            return false;
        }
        this.f1284d = j + 1;
        return ((j$.util.c0) this.f1283c).tryAdvance(obj);
    }

    @Override // j$.util.c0
    public final void forEachRemaining(Object obj) {
        Objects.requireNonNull(obj);
        long j = this.f1285e;
        long j2 = this.f1281a;
        if (j2 >= j) {
            return;
        }
        long j3 = this.f1284d;
        if (j3 >= j) {
            return;
        }
        if (j3 >= j2 && ((j$.util.c0) this.f1283c).estimateSize() + j3 <= this.f1282b) {
            ((j$.util.c0) this.f1283c).forEachRemaining(obj);
            this.f1284d = this.f1285e;
            return;
        }
        while (j2 > this.f1284d) {
            ((j$.util.c0) this.f1283c).tryAdvance(mo880b());
            this.f1284d++;
        }
        while (this.f1284d < this.f1285e) {
            ((j$.util.c0) this.f1283c).tryAdvance(obj);
            this.f1284d++;
        }
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        forEachRemaining((Object) intConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(IntConsumer intConsumer) {
        return tryAdvance((Object) intConsumer);
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        forEachRemaining((Object) longConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(LongConsumer longConsumer) {
        return tryAdvance((Object) longConsumer);
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        forEachRemaining((Object) doubleConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(DoubleConsumer doubleConsumer) {
        return tryAdvance((Object) doubleConsumer);
    }
}
