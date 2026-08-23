package j$.time;

import com.android.dx.io.Opcodes;
import j$.time.chrono.C2121r;
import j$.time.chrono.InterfaceC2114k;
import j$.time.temporal.AbstractC2189q;
import j$.time.temporal.C2191s;
import j$.time.temporal.C2192t;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2184l;
import j$.time.temporal.InterfaceC2185m;
import j$.time.temporal.InterfaceC2188p;
import j$.time.temporal.Temporal;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.l */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2164l implements InterfaceC2184l, InterfaceC2185m {
    public static final EnumC2164l APRIL;
    public static final EnumC2164l AUGUST;
    public static final EnumC2164l DECEMBER;
    public static final EnumC2164l FEBRUARY;
    public static final EnumC2164l JANUARY;
    public static final EnumC2164l JULY;
    public static final EnumC2164l JUNE;
    public static final EnumC2164l MARCH;
    public static final EnumC2164l MAY;
    public static final EnumC2164l NOVEMBER;
    public static final EnumC2164l OCTOBER;
    public static final EnumC2164l SEPTEMBER;

    /* JADX INFO: renamed from: a */
    public static final EnumC2164l[] f660a;

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ EnumC2164l[] f661b;

    static {
        EnumC2164l enumC2164l = new EnumC2164l("JANUARY", 0);
        JANUARY = enumC2164l;
        EnumC2164l enumC2164l2 = new EnumC2164l("FEBRUARY", 1);
        FEBRUARY = enumC2164l2;
        EnumC2164l enumC2164l3 = new EnumC2164l("MARCH", 2);
        MARCH = enumC2164l3;
        EnumC2164l enumC2164l4 = new EnumC2164l("APRIL", 3);
        APRIL = enumC2164l4;
        EnumC2164l enumC2164l5 = new EnumC2164l("MAY", 4);
        MAY = enumC2164l5;
        EnumC2164l enumC2164l6 = new EnumC2164l("JUNE", 5);
        JUNE = enumC2164l6;
        EnumC2164l enumC2164l7 = new EnumC2164l("JULY", 6);
        JULY = enumC2164l7;
        EnumC2164l enumC2164l8 = new EnumC2164l("AUGUST", 7);
        AUGUST = enumC2164l8;
        EnumC2164l enumC2164l9 = new EnumC2164l("SEPTEMBER", 8);
        SEPTEMBER = enumC2164l9;
        EnumC2164l enumC2164l10 = new EnumC2164l("OCTOBER", 9);
        OCTOBER = enumC2164l10;
        EnumC2164l enumC2164l11 = new EnumC2164l("NOVEMBER", 10);
        NOVEMBER = enumC2164l11;
        EnumC2164l enumC2164l12 = new EnumC2164l("DECEMBER", 11);
        DECEMBER = enumC2164l12;
        f661b = new EnumC2164l[]{enumC2164l, enumC2164l2, enumC2164l3, enumC2164l4, enumC2164l5, enumC2164l6, enumC2164l7, enumC2164l8, enumC2164l9, enumC2164l10, enumC2164l11, enumC2164l12};
        f660a = values();
    }

    /* JADX INFO: renamed from: I */
    public static EnumC2164l m702I(int i) {
        if (i >= 1 && i <= 12) {
            return f660a[i - 1];
        }
        C2159g.m685b("Invalid value for MonthOfYear: ", i);
        return null;
    }

    public static EnumC2164l valueOf(String str) {
        return (EnumC2164l) Enum.valueOf(EnumC2164l.class, str);
    }

    public static EnumC2164l[] values() {
        return (EnumC2164l[]) f661b.clone();
    }

    /* JADX INFO: renamed from: B */
    public final int m703B(boolean z) {
        int i = AbstractC2163k.f659a[ordinal()];
        return i != 1 ? (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31 : z ? 29 : 28;
    }

    /* JADX INFO: renamed from: G */
    public final int m704G() {
        int i = AbstractC2163k.f659a[ordinal()];
        if (i != 1) {
            return (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31;
        }
        return 29;
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: d */
    public final Object mo482d(C2196x c2196x) {
        return c2196x == AbstractC2189q.f698b ? C2121r.f543c : c2196x == AbstractC2189q.f699c ? ChronoUnit.MONTHS : super.mo482d(c2196x);
    }

    @Override // j$.time.temporal.InterfaceC2185m
    /* JADX INFO: renamed from: e */
    public final Temporal mo483e(Temporal temporal) {
        if (InterfaceC2114k.m611s(temporal).equals(C2121r.f543c)) {
            return temporal.mo496a(getValue(), EnumC2173a.MONTH_OF_YEAR);
        }
        C2159g.m684a("Adjustment only supported on ISO date-time");
        return null;
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: g */
    public final int mo484g(InterfaceC2188p interfaceC2188p) {
        return interfaceC2188p == EnumC2173a.MONTH_OF_YEAR ? getValue() : super.mo484g(interfaceC2188p);
    }

    public final int getValue() {
        return ordinal() + 1;
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: i */
    public final boolean mo485i(InterfaceC2188p interfaceC2188p) {
        return interfaceC2188p instanceof EnumC2173a ? interfaceC2188p == EnumC2173a.MONTH_OF_YEAR : interfaceC2188p != null && interfaceC2188p.mo721t(this);
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: k */
    public final long mo486k(InterfaceC2188p interfaceC2188p) {
        if (interfaceC2188p == EnumC2173a.MONTH_OF_YEAR) {
            return getValue();
        }
        if (interfaceC2188p instanceof EnumC2173a) {
            throw new C2191s(AbstractC2130d.m629a("Unsupported field: ", interfaceC2188p));
        }
        return interfaceC2188p.mo717P(this);
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: m */
    public final C2192t mo487m(InterfaceC2188p interfaceC2188p) {
        return interfaceC2188p == EnumC2173a.MONTH_OF_YEAR ? interfaceC2188p.mo716I() : super.mo487m(interfaceC2188p);
    }

    /* JADX INFO: renamed from: t */
    public final int m705t(boolean z) {
        switch (AbstractC2163k.f659a[ordinal()]) {
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
