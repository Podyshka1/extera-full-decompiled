package p022j$.util.concurrent;

import java.util.Comparator;
import java.util.function.Consumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.concurrent.i */
/* JADX INFO: loaded from: classes2.dex */
public final class C2255i extends C2261o implements Spliterator {

    /* JADX INFO: renamed from: i */
    public final /* synthetic */ int f965i;

    /* JADX INFO: renamed from: j */
    public long f966j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2255i(C2257k[] c2257kArr, int i, int i2, int i3, long j, int i4) {
        super(c2257kArr, i, i2, i3);
        this.f965i = i4;
        this.f966j = j;
    }

    @Override // p022j$.util.Spliterator
    public final int characteristics() {
        switch (this.f965i) {
            case 0:
                return 4353;
            default:
                return 4352;
        }
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        switch (this.f965i) {
        }
        return AbstractC2104a.m552o(this);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        switch (this.f965i) {
        }
        return AbstractC2104a.m554q(this, i);
    }

    @Override // p022j$.util.Spliterator
    public final Comparator getComparator() {
        switch (this.f965i) {
            case 0:
                throw new IllegalStateException();
            default:
                throw new IllegalStateException();
        }
    }

    @Override // p022j$.util.Spliterator
    public final Spliterator trySplit() {
        switch (this.f965i) {
            case 0:
                int i = this.f983f;
                int i2 = this.f984g;
                int i3 = (i + i2) >>> 1;
                if (i3 <= i) {
                    return null;
                }
                C2257k[] c2257kArr = this.f978a;
                this.f984g = i3;
                long j = this.f966j >>> 1;
                this.f966j = j;
                return new C2255i(c2257kArr, this.f985h, i3, i2, j, 0);
            default:
                int i4 = this.f983f;
                int i5 = this.f984g;
                int i6 = (i4 + i5) >>> 1;
                if (i6 <= i4) {
                    return null;
                }
                C2257k[] c2257kArr2 = this.f978a;
                this.f984g = i6;
                long j2 = this.f966j >>> 1;
                this.f966j = j2;
                return new C2255i(c2257kArr2, this.f985h, i6, i5, j2, 1);
        }
    }

    @Override // p022j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        switch (this.f965i) {
            case 0:
                consumer.getClass();
                while (true) {
                    C2257k c2257kM849a = m849a();
                    if (c2257kM849a != null) {
                        consumer.m940v(c2257kM849a.f971b);
                    }
                    break;
                }
                break;
            default:
                consumer.getClass();
                while (true) {
                    C2257k c2257kM849a2 = m849a();
                    if (c2257kM849a2 != null) {
                        consumer.m940v(c2257kM849a2.f972c);
                    }
                    break;
                }
                break;
        }
    }

    @Override // p022j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        switch (this.f965i) {
            case 0:
                consumer.getClass();
                C2257k c2257kM849a = m849a();
                if (c2257kM849a != null) {
                    consumer.m940v(c2257kM849a.f971b);
                    break;
                }
                break;
            default:
                consumer.getClass();
                C2257k c2257kM849a2 = m849a();
                if (c2257kM849a2 != null) {
                    consumer.m940v(c2257kM849a2.f972c);
                    break;
                }
                break;
        }
        return true;
    }

    @Override // p022j$.util.Spliterator
    public final long estimateSize() {
        switch (this.f965i) {
        }
        return this.f966j;
    }
}
