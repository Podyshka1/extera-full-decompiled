package j$.util.concurrent;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.Consumer;

/* JADX INFO: renamed from: j$.util.concurrent.f */
/* JADX INFO: loaded from: classes2.dex */
public final class C2110f extends C2119o implements Spliterator {

    /* JADX INFO: renamed from: i */
    public final ConcurrentHashMap f726i;

    /* JADX INFO: renamed from: j */
    public long f727j;

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 4353;
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
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }

    public C2110f(C2115k[] c2115kArr, int i, int i2, int i3, long j, ConcurrentHashMap concurrentHashMap) {
        super(c2115kArr, i, i2, i3);
        this.f726i = concurrentHashMap;
        this.f727j = j;
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        int i = this.f748f;
        int i2 = this.f749g;
        int i3 = (i + i2) >>> 1;
        if (i3 <= i) {
            return null;
        }
        C2115k[] c2115kArr = this.f743a;
        this.f749g = i3;
        long j = this.f727j >>> 1;
        this.f727j = j;
        return new C2110f(c2115kArr, this.f750h, i3, i2, j, this.f726i);
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        consumer.getClass();
        while (true) {
            C2115k c2115kM723a = m723a();
            if (c2115kM723a == null) {
                return;
            } else {
                consumer.m800v(new C2114j(c2115kM723a.f736b, c2115kM723a.f737c, this.f726i));
            }
        }
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        consumer.getClass();
        C2115k c2115kM723a = m723a();
        if (c2115kM723a == null) {
            return false;
        }
        consumer.m800v(new C2114j(c2115kM723a.f736b, c2115kM723a.f737c, this.f726i));
        return true;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f727j;
    }
}
