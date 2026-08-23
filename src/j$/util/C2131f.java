package j$.util;

import j$.util.Comparator;
import java.io.Serializable;
import java.util.function.Function;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* JADX INFO: renamed from: j$.util.f */
/* JADX INFO: loaded from: classes2.dex */
public final class C2131f implements java.util.Comparator, Serializable, Comparator {
    private static final long serialVersionUID = -7569533591570686392L;

    /* JADX INFO: renamed from: a */
    public final boolean f784a;

    /* JADX INFO: renamed from: b */
    public final java.util.Comparator f785b;

    @Override // java.util.Comparator, j$.util.Comparator
    public final /* synthetic */ java.util.Comparator thenComparing(Function function) {
        return Comparator.EL.m685a(this, Comparator.CC.comparing(function));
    }

    @Override // java.util.Comparator, j$.util.Comparator
    public final /* synthetic */ java.util.Comparator thenComparing(Function function, java.util.Comparator comparator) {
        return Comparator.EL.m685a(this, Comparator.CC.comparing(function, comparator));
    }

    @Override // java.util.Comparator, j$.util.Comparator
    public final /* synthetic */ java.util.Comparator thenComparingDouble(ToDoubleFunction toDoubleFunction) {
        return Comparator.EL.m685a(this, Comparator.CC.comparingDouble(toDoubleFunction));
    }

    @Override // java.util.Comparator, j$.util.Comparator
    public final /* synthetic */ java.util.Comparator thenComparingInt(ToIntFunction toIntFunction) {
        return Comparator.CC.$default$thenComparingInt(this, toIntFunction);
    }

    @Override // java.util.Comparator, j$.util.Comparator
    public final /* synthetic */ java.util.Comparator thenComparingLong(ToLongFunction toLongFunction) {
        return Comparator.EL.m685a(this, Comparator.CC.comparingLong(toLongFunction));
    }

    public C2131f(boolean z, java.util.Comparator comparator) {
        this.f784a = z;
        this.f785b = comparator;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        if (obj == null) {
            if (obj2 == null) {
                return 0;
            }
            return this.f784a ? -1 : 1;
        }
        if (obj2 == null) {
            return this.f784a ? 1 : -1;
        }
        java.util.Comparator comparator = this.f785b;
        if (comparator == null) {
            return 0;
        }
        return comparator.compare(obj, obj2);
    }

    @Override // java.util.Comparator, j$.util.Comparator
    public final java.util.Comparator thenComparing(java.util.Comparator comparator) {
        Objects.requireNonNull(comparator);
        boolean z = this.f784a;
        java.util.Comparator comparator2 = this.f785b;
        if (comparator2 != null) {
            comparator = Comparator.EL.m685a(comparator2, comparator);
        }
        return new C2131f(z, comparator);
    }

    @Override // java.util.Comparator, j$.util.Comparator
    public final java.util.Comparator reversed() {
        boolean z = !this.f784a;
        java.util.Comparator comparator = this.f785b;
        return new C2131f(z, comparator == null ? null : Comparator.EL.reversed(comparator));
    }
}
