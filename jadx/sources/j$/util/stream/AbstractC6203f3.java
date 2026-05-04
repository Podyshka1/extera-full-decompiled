package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.BooleanSupplier;
import java.util.function.Supplier;

/* JADX INFO: renamed from: j$.util.stream.f3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC6203f3 implements Spliterator {

    /* JADX INFO: renamed from: a */
    public final boolean f1135a;

    /* JADX INFO: renamed from: b */
    public final AbstractC2179b f1136b;

    /* JADX INFO: renamed from: c */
    public Supplier f1137c;

    /* JADX INFO: renamed from: d */
    public Spliterator f1138d;

    /* JADX INFO: renamed from: e */
    public InterfaceC6242p2 f1139e;

    /* JADX INFO: renamed from: f */
    public BooleanSupplier f1140f;

    /* JADX INFO: renamed from: g */
    public long f1141g;

    /* JADX INFO: renamed from: h */
    public AbstractC2181d f1142h;

    /* JADX INFO: renamed from: i */
    public boolean f1143i;

    /* JADX INFO: renamed from: d */
    public abstract void mo786d();

    /* JADX INFO: renamed from: e */
    public abstract AbstractC6203f3 mo787e(Spliterator spliterator);

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC1965a.m434q(this, i);
    }

    public AbstractC6203f3(AbstractC2179b abstractC2179b, Supplier supplier, boolean z) {
        this.f1136b = abstractC2179b;
        this.f1137c = supplier;
        this.f1138d = null;
        this.f1135a = z;
    }

    public AbstractC6203f3(AbstractC2179b abstractC2179b, Spliterator spliterator, boolean z) {
        this.f1136b = abstractC2179b;
        this.f1137c = null;
        this.f1138d = spliterator;
        this.f1135a = z;
    }

    /* JADX INFO: renamed from: c */
    public final void m857c() {
        if (this.f1138d == null) {
            this.f1138d = (Spliterator) this.f1137c.get();
            this.f1137c = null;
        }
    }

    /* JADX INFO: renamed from: a */
    public final boolean m855a() {
        AbstractC2181d abstractC2181d = this.f1142h;
        if (abstractC2181d == null) {
            if (this.f1143i) {
                return false;
            }
            m857c();
            mo786d();
            this.f1141g = 0L;
            this.f1139e.mo744m(this.f1138d.getExactSizeIfKnown());
            return m856b();
        }
        long j = this.f1141g + 1;
        this.f1141g = j;
        boolean z = j < abstractC2181d.count();
        if (z) {
            return z;
        }
        this.f1141g = 0L;
        this.f1142h.clear();
        return m856b();
    }

    @Override // j$.util.Spliterator
    public Spliterator trySplit() {
        if (!this.f1135a || this.f1142h != null || this.f1143i) {
            return null;
        }
        m857c();
        Spliterator spliteratorTrySplit = this.f1138d.trySplit();
        if (spliteratorTrySplit == null) {
            return null;
        }
        return mo787e(spliteratorTrySplit);
    }

    /* JADX INFO: renamed from: b */
    public final boolean m856b() {
        while (this.f1142h.count() == 0) {
            if (this.f1139e.mo745p() || !this.f1140f.getAsBoolean()) {
                if (this.f1143i) {
                    return false;
                }
                this.f1139e.end();
                this.f1143i = true;
            }
        }
        return true;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        m857c();
        return this.f1138d.estimateSize();
    }

    @Override // j$.util.Spliterator
    public final long getExactSizeIfKnown() {
        m857c();
        if (EnumC6195d3.SIZED.m850k(this.f1136b.f1066m)) {
            return this.f1138d.getExactSizeIfKnown();
        }
        return -1L;
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        m857c();
        int i = this.f1136b.f1066m;
        int i2 = i & ((~i) >> 1) & EnumC6195d3.f1104j & EnumC6195d3.f1100f;
        return (i2 & 64) != 0 ? (i2 & (-16449)) | (this.f1138d.characteristics() & 16448) : i2;
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        if (AbstractC1965a.m434q(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    public final String toString() {
        return String.format("%s[%s]", getClass().getName(), this.f1138d);
    }
}
