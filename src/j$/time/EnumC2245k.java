package j$.time;

import com.android.dx.io.Opcodes;
import j$.nio.file.C2148b;
import j$.time.chrono.C2203r;
import j$.time.chrono.InterfaceC2196k;
import j$.time.temporal.AbstractC2270q;
import j$.time.temporal.C2271r;
import j$.time.temporal.C2272s;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2265l;
import j$.time.temporal.InterfaceC2266m;
import j$.time.temporal.InterfaceC2269p;
import j$.time.temporal.Temporal;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.k */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2245k implements InterfaceC2265l, InterfaceC2266m {
    public static final EnumC2245k APRIL;
    public static final EnumC2245k AUGUST;
    public static final EnumC2245k DECEMBER;
    public static final EnumC2245k FEBRUARY;
    public static final EnumC2245k JANUARY;
    public static final EnumC2245k JULY;
    public static final EnumC2245k JUNE;
    public static final EnumC2245k MARCH;
    public static final EnumC2245k MAY;
    public static final EnumC2245k NOVEMBER;
    public static final EnumC2245k OCTOBER;
    public static final EnumC2245k SEPTEMBER;

    /* JADX INFO: renamed from: a */
    public static final EnumC2245k[] f810a;

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ EnumC2245k[] f811b;

    static {
        EnumC2245k enumC2245k = new EnumC2245k("JANUARY", 0);
        JANUARY = enumC2245k;
        EnumC2245k enumC2245k2 = new EnumC2245k("FEBRUARY", 1);
        FEBRUARY = enumC2245k2;
        EnumC2245k enumC2245k3 = new EnumC2245k("MARCH", 2);
        MARCH = enumC2245k3;
        EnumC2245k enumC2245k4 = new EnumC2245k("APRIL", 3);
        APRIL = enumC2245k4;
        EnumC2245k enumC2245k5 = new EnumC2245k("MAY", 4);
        MAY = enumC2245k5;
        EnumC2245k enumC2245k6 = new EnumC2245k("JUNE", 5);
        JUNE = enumC2245k6;
        EnumC2245k enumC2245k7 = new EnumC2245k("JULY", 6);
        JULY = enumC2245k7;
        EnumC2245k enumC2245k8 = new EnumC2245k("AUGUST", 7);
        AUGUST = enumC2245k8;
        EnumC2245k enumC2245k9 = new EnumC2245k("SEPTEMBER", 8);
        SEPTEMBER = enumC2245k9;
        EnumC2245k enumC2245k10 = new EnumC2245k("OCTOBER", 9);
        OCTOBER = enumC2245k10;
        EnumC2245k enumC2245k11 = new EnumC2245k("NOVEMBER", 10);
        NOVEMBER = enumC2245k11;
        EnumC2245k enumC2245k12 = new EnumC2245k("DECEMBER", 11);
        DECEMBER = enumC2245k12;
        f811b = new EnumC2245k[]{enumC2245k, enumC2245k2, enumC2245k3, enumC2245k4, enumC2245k5, enumC2245k6, enumC2245k7, enumC2245k8, enumC2245k9, enumC2245k10, enumC2245k11, enumC2245k12};
        f810a = values();
    }

    /* JADX INFO: renamed from: K */
    public static EnumC2245k m822K(int i) {
        if (i >= 1 && i <= 12) {
            return f810a[i - 1];
        }
        C2148b.m609b("Invalid value for MonthOfYear: ", i);
        return null;
    }

    public static EnumC2245k valueOf(String str) {
        return (EnumC2245k) Enum.valueOf(EnumC2245k.class, str);
    }

    public static EnumC2245k[] values() {
        return (EnumC2245k[]) f811b.clone();
    }

    /* JADX INFO: renamed from: D */
    public final int m823D(boolean z) {
        int i = AbstractC2244j.f809a[ordinal()];
        return i != 1 ? (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31 : z ? 29 : 28;
    }

    /* JADX INFO: renamed from: I */
    public final int m824I() {
        int i = AbstractC2244j.f809a[ordinal()];
        if (i != 1) {
            return (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31;
        }
        return 29;
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: d */
    public final Object mo530d(C2213e c2213e) {
        return c2213e == AbstractC2270q.f848b ? C2203r.f699c : c2213e == AbstractC2270q.f849c ? ChronoUnit.MONTHS : super.mo530d(c2213e);
    }

    @Override // j$.time.temporal.InterfaceC2266m
    /* JADX INFO: renamed from: e */
    public final Temporal mo641e(Temporal temporal) {
        if (InterfaceC2196k.m758r(temporal).equals(C2203r.f699c)) {
            return temporal.mo652a(getValue(), EnumC2254a.MONTH_OF_YEAR);
        }
        C2148b.m615h("Adjustment only supported on ISO date-time");
        return null;
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: g */
    public final int mo642g(InterfaceC2269p interfaceC2269p) {
        return interfaceC2269p == EnumC2254a.MONTH_OF_YEAR ? getValue() : super.mo642g(interfaceC2269p);
    }

    public final int getValue() {
        return ordinal() + 1;
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: i */
    public final boolean mo531i(InterfaceC2269p interfaceC2269p) {
        return interfaceC2269p instanceof EnumC2254a ? interfaceC2269p == EnumC2254a.MONTH_OF_YEAR : interfaceC2269p != null && interfaceC2269p.mo833s(this);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: k */
    public final long mo532k(InterfaceC2269p interfaceC2269p) {
        if (interfaceC2269p == EnumC2254a.MONTH_OF_YEAR) {
            return getValue();
        }
        if (interfaceC2269p instanceof EnumC2254a) {
            throw new C2271r(AbstractC2185c.m719a("Unsupported field: ", interfaceC2269p));
        }
        return interfaceC2269p.mo831S(this);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: l */
    public final C2272s mo643l(InterfaceC2269p interfaceC2269p) {
        return interfaceC2269p == EnumC2254a.MONTH_OF_YEAR ? interfaceC2269p.mo830K() : super.mo643l(interfaceC2269p);
    }

    /* JADX INFO: renamed from: s */
    public final int m825s(boolean z) {
        switch (AbstractC2244j.f809a[ordinal()]) {
            case 1:
                return 32;
            case 2:
                return (z ? 1 : 0) + 91;
            case 3:
                return (z ? 1 : 0) + 152;
            case 4:
                return (z ? 1 : 0) + 244;
            case 5:
                return (z ? 1 : 0) + 305;
            case 6:
                return 1;
            case 7:
                return (z ? 1 : 0) + 60;
            case 8:
                return (z ? 1 : 0) + 121;
            case 9:
                return (z ? 1 : 0) + 182;
            case 10:
                return (z ? 1 : 0) + Opcodes.AND_INT_LIT16;
            case 11:
                return (z ? 1 : 0) + 274;
            default:
                return (z ? 1 : 0) + 335;
        }
    }
}
