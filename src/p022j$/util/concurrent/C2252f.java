package p022j$.util.concurrent;

import java.util.Comparator;
import java.util.function.Consumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.concurrent.f */
/* JADX INFO: loaded from: classes2.dex */
public final class C2252f extends C2261o implements Spliterator {

    /* JADX INFO: renamed from: i */
    public final ConcurrentHashMap f961i;

    /* JADX INFO: renamed from: j */
    public long f962j;

    @Override // p022j$.util.Spliterator
    public final int characteristics() {
        return 4353;
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

    public C2252f(C2257k[] c2257kArr, int i, int i2, int i3, long j, ConcurrentHashMap concurrentHashMap) {
        super(c2257kArr, i, i2, i3);
        this.f961i = concurrentHashMap;
        this.f962j = j;
    }

    @Override // p022j$.util.Spliterator
    public final Spliterator trySplit() {
        int i = this.f983f;
        int i2 = this.f984g;
        int i3 = (i + i2) >>> 1;
        if (i3 <= i) {
            return null;
        }
        C2257k[] c2257kArr = this.f978a;
        this.f984g = i3;
        long j = this.f962j >>> 1;
        this.f962j = j;
        return new C2252f(c2257kArr, this.f985h, i3, i2, j, this.f961i);
    }

    @Override // p022j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        consumer.getClass();
        while (true) {
            C2257k c2257kM849a = m849a();
            if (c2257kM849a == null) {
                return;
            } else {
                consumer.m940v(new C2256j(c2257kM849a.f971b, c2257kM849a.f972c, this.f961i));
            }
        }
    }

    @Override // p022j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        consumer.getClass();
        C2257k c2257kM849a = m849a();
        if (c2257kM849a == null) {
            return false;
        }
        consumer.m940v(new C2256j(c2257kM849a.f971b, c2257kM849a.f972c, this.f961i));
        return true;
    }

    @Override // p022j$.util.Spliterator
    public final long estimateSize() {
        return this.f962j;
    }
}
