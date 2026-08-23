package j$.util;

import j$.com.android.tools.r8.AbstractC1965a;
import java.util.Iterator;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public class p0 implements Spliterator {

    /* JADX INFO: renamed from: a */
    public final java.util.Collection f840a;

    /* JADX INFO: renamed from: b */
    public Iterator f841b = null;

    /* JADX INFO: renamed from: c */
    public final int f842c;

    /* JADX INFO: renamed from: d */
    public long f843d;

    /* JADX INFO: renamed from: e */
    public int f844e;

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC1965a.m432o(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC1965a.m434q(this, i);
    }

    public p0(java.util.Collection collection, int i) {
        this.f840a = collection;
        this.f842c = (i & 4096) == 0 ? i | 16448 : i;
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        long size;
        Iterator it = this.f841b;
        if (it == null) {
            it = this.f840a.iterator();
            this.f841b = it;
            size = this.f840a.size();
            this.f843d = size;
        } else {
            size = this.f843d;
        }
        if (size <= 1 || !it.hasNext()) {
            return null;
        }
        int i = this.f844e + 1024;
        if (i > size) {
            i = (int) size;
        }
        if (i > 33554432) {
            i = 33554432;
        }
        Object[] objArr = new Object[i];
        int i2 = 0;
        do {
            objArr[i2] = it.next();
            i2++;
            if (i2 >= i) {
                break;
            }
        } while (it.hasNext());
        this.f844e = i2;
        long j = this.f843d;
        if (j != Long.MAX_VALUE) {
            this.f843d = j - ((long) i2);
        }
        return new i0(objArr, 0, i2, this.f842c);
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        consumer.getClass();
        Iterator it = this.f841b;
        if (it == null) {
            it = this.f840a.iterator();
            this.f841b = it;
            this.f843d = this.f840a.size();
        }
        AbstractC1965a.m407M(it, consumer);
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        consumer.getClass();
        if (this.f841b == null) {
            this.f841b = this.f840a.iterator();
            this.f843d = this.f840a.size();
        }
        if (!this.f841b.hasNext()) {
            return false;
        }
        consumer.accept(this.f841b.next());
        return true;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        if (this.f841b == null) {
            this.f841b = this.f840a.iterator();
            long size = this.f840a.size();
            this.f843d = size;
            return size;
        }
        return this.f843d;
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return this.f842c;
    }

    @Override // j$.util.Spliterator
    public java.util.Comparator getComparator() {
        if (AbstractC1965a.m434q(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }
}
