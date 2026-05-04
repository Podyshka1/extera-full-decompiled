package kotlin.comparisons;

import java.util.Comparator;
import java.util.function.Function;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;
import kotlin.jvm.internal.Intrinsics;
import p022j$.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
final class ReverseOrderComparator implements Comparator, p022j$.util.Comparator {
    public static final ReverseOrderComparator INSTANCE = new ReverseOrderComparator();

    @Override // java.util.Comparator, p022j$.util.Comparator
    public /* synthetic */ Comparator thenComparing(Comparator comparator) {
        return Comparator.CC.$default$thenComparing(this, comparator);
    }

    @Override // java.util.Comparator, p022j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparing(Function function) {
        return Comparator.EL.m810a(this, Comparator.CC.comparing(function));
    }

    @Override // java.util.Comparator, p022j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparing(Function function, java.util.Comparator comparator) {
        return Comparator.EL.m810a(this, Comparator.CC.comparing(function, comparator));
    }

    @Override // java.util.Comparator, p022j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingDouble(ToDoubleFunction toDoubleFunction) {
        return Comparator.EL.m810a(this, Comparator.CC.comparingDouble(toDoubleFunction));
    }

    @Override // java.util.Comparator, p022j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingInt(ToIntFunction toIntFunction) {
        return Comparator.CC.$default$thenComparingInt(this, toIntFunction);
    }

    @Override // java.util.Comparator, p022j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingLong(ToLongFunction toLongFunction) {
        return Comparator.EL.m810a(this, Comparator.CC.comparingLong(toLongFunction));
    }

    private ReverseOrderComparator() {
    }

    @Override // java.util.Comparator
    public int compare(Comparable a, Comparable b) {
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        return b.compareTo(a);
    }

    @Override // java.util.Comparator, p022j$.util.Comparator
    public final java.util.Comparator reversed() {
        return NaturalOrderComparator.INSTANCE;
    }
}
