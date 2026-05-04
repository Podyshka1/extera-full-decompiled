package j$.util.concurrent;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.Consumer;

/* JADX INFO: renamed from: j$.util.concurrent.i */
/* JADX INFO: loaded from: classes2.dex */
public final class C2113i extends C2119o implements Spliterator {

    /* JADX INFO: renamed from: i */
    public final /* synthetic */ int f730i;

    /* JADX INFO: renamed from: j */
    public long f731j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2113i(C2115k[] c2115kArr, int i, int i2, int i3, long j, int i4) {
        super(c2115kArr, i, i2, i3);
        this.f730i = i4;
        this.f731j = j;
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        switch (this.f730i) {
            case 0:
                return 4353;
            default:
                return 4352;
        }
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        switch (this.f730i) {
        }
        return AbstractC1965a.m432o(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        switch (this.f730i) {
        }
        return AbstractC1965a.m434q(this, i);
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        switch (this.f730i) {
            case 0:
                throw new IllegalStateException();
            default:
                throw new IllegalStateException();
        }
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        switch (this.f730i) {
            case 0:
                int i = this.f748f;
                int i2 = this.f749g;
                int i3 = (i + i2) >>> 1;
                if (i3 <= i) {
                    return null;
                }
                C2115k[] c2115kArr = this.f743a;
                this.f749g = i3;
                long j = this.f731j >>> 1;
                this.f731j = j;
                return new C2113i(c2115kArr, this.f750h, i3, i2, j, 0);
            default:
                int i4 = this.f748f;
                int i5 = this.f749g;
                int i6 = (i4 + i5) >>> 1;
                if (i6 <= i4) {
                    return null;
                }
                C2115k[] c2115kArr2 = this.f743a;
                this.f749g = i6;
                long j2 = this.f731j >>> 1;
                this.f731j = j2;
                return new C2113i(c2115kArr2, this.f750h, i6, i5, j2, 1);
        }
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        switch (this.f730i) {
            case 0:
                consumer.getClass();
                while (true) {
                    C2115k c2115kM723a = m723a();
                    if (c2115kM723a != null) {
                        consumer.m800v(c2115kM723a.f736b);
                    }
                    break;
                }
                break;
            default:
                consumer.getClass();
                while (true) {
                    C2115k c2115kM723a2 = m723a();
                    if (c2115kM723a2 != null) {
                        consumer.m800v(c2115kM723a2.f737c);
                    }
                    break;
                }
                break;
        }
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        switch (this.f730i) {
            case 0:
                consumer.getClass();
                C2115k c2115kM723a = m723a();
                if (c2115kM723a != null) {
                    consumer.m800v(c2115kM723a.f736b);
                    break;
                }
                break;
            default:
                consumer.getClass();
                C2115k c2115kM723a2 = m723a();
                if (c2115kM723a2 != null) {
                    consumer.m800v(c2115kM723a2.f737c);
                    break;
                }
                break;
        }
        return true;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        switch (this.f730i) {
        }
        return this.f731j;
    }
}
