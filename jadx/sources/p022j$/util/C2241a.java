package p022j$.util;

import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.List;
import java.util.function.Consumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;

/* JADX INFO: renamed from: j$.util.a */
/* JADX INFO: loaded from: classes2.dex */
public final class C2241a implements Spliterator {

    /* JADX INFO: renamed from: a */
    public final List f928a;

    /* JADX INFO: renamed from: b */
    public int f929b;

    /* JADX INFO: renamed from: c */
    public int f930c;

    @Override // p022j$.util.Spliterator
    public final int characteristics() {
        return 16464;
    }

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

    public C2241a(List list) {
        this.f928a = list;
        this.f929b = 0;
        this.f930c = -1;
    }

    public C2241a(C2241a c2241a, int i, int i2) {
        this.f928a = c2241a.f928a;
        this.f929b = i;
        this.f930c = i2;
    }

    /* JADX INFO: renamed from: a */
    public final int m822a() {
        List list = this.f928a;
        int i = this.f930c;
        if (i >= 0) {
            return i;
        }
        int size = list.size();
        this.f930c = size;
        return size;
    }

    @Override // p022j$.util.Spliterator
    public final Spliterator trySplit() {
        int iM822a = m822a();
        int i = this.f929b;
        int i2 = (iM822a + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        this.f929b = i2;
        return new C2241a(this, i, i2);
    }

    @Override // p022j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        consumer.getClass();
        int iM822a = m822a();
        int i = this.f929b;
        if (i >= iM822a) {
            return false;
        }
        this.f929b = i + 1;
        try {
            consumer.m940v(this.f928a.get(i));
            return true;
        } catch (IndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // p022j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        List list = this.f928a;
        int iM822a = m822a();
        this.f929b = iM822a;
        for (int i = this.f929b; i < iM822a; i++) {
            try {
                consumer.m940v(list.get(i));
            } catch (IndexOutOfBoundsException unused) {
                throw new ConcurrentModificationException();
            }
        }
    }

    @Override // p022j$.util.Spliterator
    public final long estimateSize() {
        return m822a() - this.f929b;
    }
}
