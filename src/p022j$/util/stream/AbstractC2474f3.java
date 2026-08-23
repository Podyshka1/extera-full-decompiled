package p022j$.util.stream;

import java.util.Comparator;
import java.util.function.BooleanSupplier;
import java.util.function.Supplier;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.f3 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2474f3 implements Spliterator {

    /* JADX INFO: renamed from: a */
    public final boolean f1371a;

    /* JADX INFO: renamed from: b */
    public final AbstractC2446b f1372b;

    /* JADX INFO: renamed from: c */
    public Supplier f1373c;

    /* JADX INFO: renamed from: d */
    public Spliterator f1374d;

    /* JADX INFO: renamed from: e */
    public InterfaceC2529p2 f1375e;

    /* JADX INFO: renamed from: f */
    public BooleanSupplier f1376f;

    /* JADX INFO: renamed from: g */
    public long f1377g;

    /* JADX INFO: renamed from: h */
    public AbstractC2458d f1378h;

    /* JADX INFO: renamed from: i */
    public boolean f1379i;

    /* JADX INFO: renamed from: d */
    public abstract void mo923d();

    /* JADX INFO: renamed from: e */
    public abstract AbstractC2474f3 mo924e(Spliterator spliterator);

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2104a.m554q(this, i);
    }

    public AbstractC2474f3(AbstractC2446b abstractC2446b, Supplier supplier, boolean z) {
        this.f1372b = abstractC2446b;
        this.f1373c = supplier;
        this.f1374d = null;
        this.f1371a = z;
    }

    public AbstractC2474f3(AbstractC2446b abstractC2446b, Spliterator spliterator, boolean z) {
        this.f1372b = abstractC2446b;
        this.f1373c = null;
        this.f1374d = spliterator;
        this.f1371a = z;
    }

    /* JADX INFO: renamed from: c */
    public final void m1008c() {
        if (this.f1374d == null) {
            this.f1374d = (Spliterator) this.f1373c.get();
            this.f1373c = null;
        }
    }

    /* JADX INFO: renamed from: a */
    public final boolean m1006a() {
        AbstractC2458d abstractC2458d = this.f1378h;
        if (abstractC2458d == null) {
            if (this.f1379i) {
                return false;
            }
            m1008c();
            mo923d();
            this.f1377g = 0L;
            this.f1375e.mo873m(this.f1374d.getExactSizeIfKnown());
            return m1007b();
        }
        long j = this.f1377g + 1;
        this.f1377g = j;
        boolean z = j < abstractC2458d.count();
        if (z) {
            return z;
        }
        this.f1377g = 0L;
        this.f1378h.clear();
        return m1007b();
    }

    @Override // p022j$.util.Spliterator
    public Spliterator trySplit() {
        if (!this.f1371a || this.f1378h != null || this.f1379i) {
            return null;
        }
        m1008c();
        Spliterator spliteratorTrySplit = this.f1374d.trySplit();
        if (spliteratorTrySplit == null) {
            return null;
        }
        return mo924e(spliteratorTrySplit);
    }

    /* JADX INFO: renamed from: b */
    public final boolean m1007b() {
        while (this.f1378h.count() == 0) {
            if (this.f1375e.mo874p() || !this.f1376f.getAsBoolean()) {
                if (this.f1379i) {
                    return false;
                }
                this.f1375e.end();
                this.f1379i = true;
            }
        }
        return true;
    }

    @Override // p022j$.util.Spliterator
    public final long estimateSize() {
        m1008c();
        return this.f1374d.estimateSize();
    }

    @Override // p022j$.util.Spliterator
    public final long getExactSizeIfKnown() {
        m1008c();
        if (EnumC2462d3.SIZED.m1001k(this.f1372b.f1301m)) {
            return this.f1374d.getExactSizeIfKnown();
        }
        return -1L;
    }

    @Override // p022j$.util.Spliterator
    public final int characteristics() {
        m1008c();
        int i = this.f1372b.f1301m;
        int i2 = i & ((~i) >> 1) & EnumC2462d3.f1340j & EnumC2462d3.f1336f;
        return (i2 & 64) != 0 ? (i2 & (-16449)) | (this.f1374d.characteristics() & 16448) : i2;
    }

    @Override // p022j$.util.Spliterator
    public final Comparator getComparator() {
        if (AbstractC2104a.m554q(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    public final String toString() {
        return String.format("%s[%s]", getClass().getName(), this.f1374d);
    }
}
