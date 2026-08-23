package j$.util;

import j$.com.android.tools.r8.AbstractC1965a;
import java.util.ConcurrentModificationException;
import java.util.function.Consumer;

/* JADX INFO: renamed from: j$.util.a */
/* JADX INFO: loaded from: classes2.dex */
public final class C2102a implements Spliterator {

    /* JADX INFO: renamed from: a */
    public final java.util.List f693a;

    /* JADX INFO: renamed from: b */
    public int f694b;

    /* JADX INFO: renamed from: c */
    public int f695c;

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 16464;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC1965a.m432o(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC1965a.m434q(this, i);
    }

    @Override // j$.util.Spliterator
    public final java.util.Comparator getComparator() {
        throw new IllegalStateException();
    }

    public C2102a(java.util.List list) {
        this.f693a = list;
        this.f694b = 0;
        this.f695c = -1;
    }

    public C2102a(C2102a c2102a, int i, int i2) {
        this.f693a = c2102a.f693a;
        this.f694b = i;
        this.f695c = i2;
    }

    /* JADX INFO: renamed from: a */
    public final int m696a() {
        java.util.List list = this.f693a;
        int i = this.f695c;
        if (i >= 0) {
            return i;
        }
        int size = list.size();
        this.f695c = size;
        return size;
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        int iM696a = m696a();
        int i = this.f694b;
        int i2 = (iM696a + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        this.f694b = i2;
        return new C2102a(this, i, i2);
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        consumer.getClass();
        int iM696a = m696a();
        int i = this.f694b;
        if (i >= iM696a) {
            return false;
        }
        this.f694b = i + 1;
        try {
            consumer.m800v(this.f693a.get(i));
            return true;
        } catch (IndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        java.util.List list = this.f693a;
        int iM696a = m696a();
        this.f694b = iM696a;
        for (int i = this.f694b; i < iM696a; i++) {
            try {
                consumer.m800v(list.get(i));
            } catch (IndexOutOfBoundsException unused) {
                throw new ConcurrentModificationException();
            }
        }
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return m696a() - this.f694b;
    }
}
