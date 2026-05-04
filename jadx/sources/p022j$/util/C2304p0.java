package p022j$.util;

import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.function.Consumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;

/* JADX INFO: renamed from: j$.util.p0 */
/* JADX INFO: loaded from: classes2.dex */
public class C2304p0 implements Spliterator {

    /* JADX INFO: renamed from: a */
    public final Collection f1075a;

    /* JADX INFO: renamed from: b */
    public Iterator f1076b = null;

    /* JADX INFO: renamed from: c */
    public final int f1077c;

    /* JADX INFO: renamed from: d */
    public long f1078d;

    /* JADX INFO: renamed from: e */
    public int f1079e;

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2104a.m552o(this);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2104a.m554q(this, i);
    }

    public C2304p0(Collection collection, int i) {
        this.f1075a = collection;
        this.f1077c = (i & 4096) == 0 ? i | 16448 : i;
    }

    @Override // p022j$.util.Spliterator
    public final Spliterator trySplit() {
        long size;
        Iterator it = this.f1076b;
        if (it == null) {
            it = this.f1075a.iterator();
            this.f1076b = it;
            size = this.f1075a.size();
            this.f1078d = size;
        } else {
            size = this.f1078d;
        }
        if (size <= 1 || !it.hasNext()) {
            return null;
        }
        int i = this.f1079e + 1024;
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
        this.f1079e = i2;
        long j = this.f1078d;
        if (j != Long.MAX_VALUE) {
            this.f1078d = j - ((long) i2);
        }
        return new C2290i0(objArr, 0, i2, this.f1077c);
    }

    @Override // p022j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        consumer.getClass();
        Iterator it = this.f1076b;
        if (it == null) {
            it = this.f1075a.iterator();
            this.f1076b = it;
            this.f1078d = this.f1075a.size();
        }
        AbstractC2104a.m527M(it, consumer);
    }

    @Override // p022j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        consumer.getClass();
        if (this.f1076b == null) {
            this.f1076b = this.f1075a.iterator();
            this.f1078d = this.f1075a.size();
        }
        if (!this.f1076b.hasNext()) {
            return false;
        }
        consumer.accept(this.f1076b.next());
        return true;
    }

    @Override // p022j$.util.Spliterator
    public final long estimateSize() {
        if (this.f1076b == null) {
            this.f1076b = this.f1075a.iterator();
            long size = this.f1075a.size();
            this.f1078d = size;
            return size;
        }
        return this.f1078d;
    }

    @Override // p022j$.util.Spliterator
    public final int characteristics() {
        return this.f1077c;
    }

    @Override // p022j$.util.Spliterator
    public Comparator getComparator() {
        if (AbstractC2104a.m554q(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }
}
