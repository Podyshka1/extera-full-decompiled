package p022j$.util;

import java.io.Serializable;
import java.util.Comparator;
import java.util.function.Function;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;
import p022j$.util.Comparator;

/* JADX INFO: renamed from: j$.util.f */
/* JADX INFO: loaded from: classes2.dex */
public final class C2275f implements Comparator, Serializable, Comparator {
    private static final long serialVersionUID = -7569533591570686392L;

    /* JADX INFO: renamed from: a */
    public final boolean f1019a;

    /* JADX INFO: renamed from: b */
    public final Comparator f1020b;

    @Override // java.util.Comparator, p022j$.util.Comparator
    public final /* synthetic */ Comparator thenComparing(Function function) {
        return Comparator.EL.m810a(this, Comparator.CC.comparing(function));
    }

    @Override // java.util.Comparator, p022j$.util.Comparator
    public final /* synthetic */ java.util.Comparator thenComparing(Function function, java.util.Comparator comparator) {
        return Comparator.EL.m810a(this, Comparator.CC.comparing(function, comparator));
    }

    @Override // java.util.Comparator, p022j$.util.Comparator
    public final /* synthetic */ java.util.Comparator thenComparingDouble(ToDoubleFunction toDoubleFunction) {
        return Comparator.EL.m810a(this, Comparator.CC.comparingDouble(toDoubleFunction));
    }

    @Override // java.util.Comparator, p022j$.util.Comparator
    public final /* synthetic */ java.util.Comparator thenComparingInt(ToIntFunction toIntFunction) {
        return Comparator.CC.$default$thenComparingInt(this, toIntFunction);
    }

    @Override // java.util.Comparator, p022j$.util.Comparator
    public final /* synthetic */ java.util.Comparator thenComparingLong(ToLongFunction toLongFunction) {
        return Comparator.EL.m810a(this, Comparator.CC.comparingLong(toLongFunction));
    }

    public C2275f(boolean z, java.util.Comparator comparator) {
        this.f1019a = z;
        this.f1020b = comparator;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        if (obj == null) {
            if (obj2 == null) {
                return 0;
            }
            return this.f1019a ? -1 : 1;
        }
        if (obj2 == null) {
            return this.f1019a ? 1 : -1;
        }
        java.util.Comparator comparator = this.f1020b;
        if (comparator == null) {
            return 0;
        }
        return comparator.compare(obj, obj2);
    }

    @Override // java.util.Comparator, p022j$.util.Comparator
    public final java.util.Comparator thenComparing(java.util.Comparator comparator) {
        Objects.requireNonNull(comparator);
        boolean z = this.f1019a;
        java.util.Comparator comparator2 = this.f1020b;
        if (comparator2 != null) {
            comparator = Comparator.EL.m810a(comparator2, comparator);
        }
        return new C2275f(z, comparator);
    }

    @Override // java.util.Comparator, p022j$.util.Comparator
    public final java.util.Comparator reversed() {
        boolean z = !this.f1019a;
        java.util.Comparator comparator = this.f1020b;
        return new C2275f(z, comparator == null ? null : Comparator.EL.reversed(comparator));
    }
}
