package j$.util;

import j$.util.Comparator;
import java.util.function.Function;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.util.e */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2130e implements java.util.Comparator, Comparator {
    public static final EnumC2130e INSTANCE;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC2130e[] f780a;

    @Override // java.util.Comparator, j$.util.Comparator
    public final /* synthetic */ java.util.Comparator thenComparing(java.util.Comparator comparator) {
        return Comparator.CC.$default$thenComparing(this, comparator);
    }

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

    public static EnumC2130e valueOf(String str) {
        return (EnumC2130e) Enum.valueOf(EnumC2130e.class, str);
    }

    public static EnumC2130e[] values() {
        return (EnumC2130e[]) f780a.clone();
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return ((Comparable) obj).compareTo((Comparable) obj2);
    }

    static {
        EnumC2130e enumC2130e = new EnumC2130e("INSTANCE", 0);
        INSTANCE = enumC2130e;
        f780a = new EnumC2130e[]{enumC2130e};
    }

    @Override // java.util.Comparator, j$.util.Comparator
    public final java.util.Comparator reversed() {
        return Comparator.CC.reverseOrder();
    }
}
