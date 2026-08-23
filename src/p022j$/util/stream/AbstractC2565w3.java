package p022j$.util.stream;

import java.util.Comparator;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.InterfaceC2246c0;
import p022j$.util.Objects;

/* JADX INFO: renamed from: j$.util.stream.w3 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2565w3 extends AbstractC2575y3 implements InterfaceC2246c0 {
    /* JADX INFO: renamed from: b */
    public abstract Object mo1034b();

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

    public AbstractC2565w3(InterfaceC2246c0 interfaceC2246c0, long j, long j2) {
        super(interfaceC2246c0, j, j2, 0L, Math.min(interfaceC2246c0.estimateSize(), j2));
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final boolean tryAdvance(Object obj) {
        long j;
        Objects.requireNonNull(obj);
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
            ((InterfaceC2246c0) this.f1519c).tryAdvance(mo1034b());
            this.f1520d++;
        }
        if (j >= this.f1521e) {
            return false;
        }
        this.f1520d = j + 1;
        return ((InterfaceC2246c0) this.f1519c).tryAdvance(obj);
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final void forEachRemaining(Object obj) {
        Objects.requireNonNull(obj);
        long j = this.f1521e;
        long j2 = this.f1517a;
        if (j2 >= j) {
            return;
        }
        long j3 = this.f1520d;
        if (j3 >= j) {
            return;
        }
        if (j3 >= j2 && ((InterfaceC2246c0) this.f1519c).estimateSize() + j3 <= this.f1518b) {
            ((InterfaceC2246c0) this.f1519c).forEachRemaining(obj);
            this.f1520d = this.f1521e;
            return;
        }
        while (j2 > this.f1520d) {
            ((InterfaceC2246c0) this.f1519c).tryAdvance(mo1034b());
            this.f1520d++;
        }
        while (this.f1520d < this.f1521e) {
            ((InterfaceC2246c0) this.f1519c).tryAdvance(obj);
            this.f1520d++;
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
