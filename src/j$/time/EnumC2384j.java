package j$.time;

import com.android.dx.io.Opcodes;
import j$.nio.file.C2288b;
import j$.time.chrono.C2343r;
import j$.time.chrono.InterfaceC2336k;
import j$.time.temporal.AbstractC2409q;
import j$.time.temporal.C2410r;
import j$.time.temporal.C2411s;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2404l;
import j$.time.temporal.InterfaceC2405m;
import j$.time.temporal.InterfaceC2408p;
import j$.time.temporal.Temporal;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.j */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2384j implements InterfaceC2404l, InterfaceC2405m {
    public static final EnumC2384j APRIL;
    public static final EnumC2384j AUGUST;
    public static final EnumC2384j DECEMBER;
    public static final EnumC2384j FEBRUARY;
    public static final EnumC2384j JANUARY;
    public static final EnumC2384j JULY;
    public static final EnumC2384j JUNE;
    public static final EnumC2384j MARCH;
    public static final EnumC2384j MAY;
    public static final EnumC2384j NOVEMBER;
    public static final EnumC2384j OCTOBER;
    public static final EnumC2384j SEPTEMBER;

    /* JADX INFO: renamed from: a */
    public static final EnumC2384j[] f812a;

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ EnumC2384j[] f813b;

    static {
        EnumC2384j enumC2384j = new EnumC2384j("JANUARY", 0);
        JANUARY = enumC2384j;
        EnumC2384j enumC2384j2 = new EnumC2384j("FEBRUARY", 1);
        FEBRUARY = enumC2384j2;
        EnumC2384j enumC2384j3 = new EnumC2384j("MARCH", 2);
        MARCH = enumC2384j3;
        EnumC2384j enumC2384j4 = new EnumC2384j("APRIL", 3);
        APRIL = enumC2384j4;
        EnumC2384j enumC2384j5 = new EnumC2384j("MAY", 4);
        MAY = enumC2384j5;
        EnumC2384j enumC2384j6 = new EnumC2384j("JUNE", 5);
        JUNE = enumC2384j6;
        EnumC2384j enumC2384j7 = new EnumC2384j("JULY", 6);
        JULY = enumC2384j7;
        EnumC2384j enumC2384j8 = new EnumC2384j("AUGUST", 7);
        AUGUST = enumC2384j8;
        EnumC2384j enumC2384j9 = new EnumC2384j("SEPTEMBER", 8);
        SEPTEMBER = enumC2384j9;
        EnumC2384j enumC2384j10 = new EnumC2384j("OCTOBER", 9);
        OCTOBER = enumC2384j10;
        EnumC2384j enumC2384j11 = new EnumC2384j("NOVEMBER", 10);
        NOVEMBER = enumC2384j11;
        EnumC2384j enumC2384j12 = new EnumC2384j("DECEMBER", 11);
        DECEMBER = enumC2384j12;
        f813b = new EnumC2384j[]{enumC2384j, enumC2384j2, enumC2384j3, enumC2384j4, enumC2384j5, enumC2384j6, enumC2384j7, enumC2384j8, enumC2384j9, enumC2384j10, enumC2384j11, enumC2384j12};
        f812a = values();
    }

    /* JADX INFO: renamed from: K */
    public static EnumC2384j m866K(int i) {
        if (i >= 1 && i <= 12) {
            return f812a[i - 1];
        }
        C2288b.m633b("Invalid value for MonthOfYear: ", i);
        return null;
    }

    public static EnumC2384j valueOf(String str) {
        return (EnumC2384j) Enum.valueOf(EnumC2384j.class, str);
    }

    public static EnumC2384j[] values() {
        return (EnumC2384j[]) f813b.clone();
    }

    /* JADX INFO: renamed from: D */
    public final int m867D(boolean z) {
        int i = AbstractC2383i.f811a[ordinal()];
        return i != 1 ? (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31 : z ? 29 : 28;
    }

    /* JADX INFO: renamed from: I */
    public final int m868I() {
        int i = AbstractC2383i.f811a[ordinal()];
        if (i != 1) {
            return (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31;
        }
        return 29;
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: d */
    public final Object mo554d(C2352d c2352d) {
        return c2352d == AbstractC2409q.f850b ? C2343r.f701c : c2352d == AbstractC2409q.f851c ? ChronoUnit.MONTHS : super.mo554d(c2352d);
    }

    @Override // j$.time.temporal.InterfaceC2405m
    /* JADX INFO: renamed from: e */
    public final Temporal mo665e(Temporal temporal) {
        if (InterfaceC2336k.m795r(temporal).equals(C2343r.f701c)) {
            return temporal.mo676a(getValue(), EnumC2393a.MONTH_OF_YEAR);
        }
        C2288b.m639h("Adjustment only supported on ISO date-time");
        return null;
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: g */
    public final int mo666g(InterfaceC2408p interfaceC2408p) {
        return interfaceC2408p == EnumC2393a.MONTH_OF_YEAR ? getValue() : super.mo666g(interfaceC2408p);
    }

    public final int getValue() {
        return ordinal() + 1;
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: i */
    public final boolean mo555i(InterfaceC2408p interfaceC2408p) {
        return interfaceC2408p instanceof EnumC2393a ? interfaceC2408p == EnumC2393a.MONTH_OF_YEAR : interfaceC2408p != null && interfaceC2408p.mo879s(this);
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: k */
    public final long mo556k(InterfaceC2408p interfaceC2408p) {
        if (interfaceC2408p == EnumC2393a.MONTH_OF_YEAR) {
            return getValue();
        }
        if (interfaceC2408p instanceof EnumC2393a) {
            throw new C2410r(AbstractC2324b.m753a("Unsupported field: ", interfaceC2408p));
        }
        return interfaceC2408p.mo875R(this);
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: l */
    public final C2411s mo667l(InterfaceC2408p interfaceC2408p) {
        return interfaceC2408p == EnumC2393a.MONTH_OF_YEAR ? interfaceC2408p.mo874K() : super.mo667l(interfaceC2408p);
    }

    /* JADX INFO: renamed from: s */
    public final int m869s(boolean z) {
        switch (AbstractC2383i.f811a[ordinal()]) {
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
