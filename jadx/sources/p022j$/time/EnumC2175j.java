package p022j$.time;

import com.android.p003dx.p006io.Opcodes;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.chrono.C2136r;
import p022j$.time.format.C2148a;
import p022j$.time.temporal.AbstractC2203r;
import p022j$.time.temporal.C2205t;
import p022j$.time.temporal.C2206u;
import p022j$.time.temporal.EnumC2186a;
import p022j$.time.temporal.EnumC2187b;
import p022j$.time.temporal.InterfaceC2198m;
import p022j$.time.temporal.InterfaceC2199n;
import p022j$.time.temporal.InterfaceC2200o;
import p022j$.time.temporal.InterfaceC2202q;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.j */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2175j implements InterfaceC2199n, InterfaceC2200o {
    public static final EnumC2175j APRIL;
    public static final EnumC2175j AUGUST;
    public static final EnumC2175j DECEMBER;
    public static final EnumC2175j FEBRUARY;
    public static final EnumC2175j JANUARY;
    public static final EnumC2175j JULY;
    public static final EnumC2175j JUNE;
    public static final EnumC2175j MARCH;
    public static final EnumC2175j MAY;
    public static final EnumC2175j NOVEMBER;
    public static final EnumC2175j OCTOBER;
    public static final EnumC2175j SEPTEMBER;

    /* JADX INFO: renamed from: a */
    public static final EnumC2175j[] f802a;

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ EnumC2175j[] f803b;

    public static EnumC2175j valueOf(String str) {
        return (EnumC2175j) Enum.valueOf(EnumC2175j.class, str);
    }

    public static EnumC2175j[] values() {
        return (EnumC2175j[]) f803b.clone();
    }

    static {
        EnumC2175j enumC2175j = new EnumC2175j("JANUARY", 0);
        JANUARY = enumC2175j;
        EnumC2175j enumC2175j2 = new EnumC2175j("FEBRUARY", 1);
        FEBRUARY = enumC2175j2;
        EnumC2175j enumC2175j3 = new EnumC2175j("MARCH", 2);
        MARCH = enumC2175j3;
        EnumC2175j enumC2175j4 = new EnumC2175j("APRIL", 3);
        APRIL = enumC2175j4;
        EnumC2175j enumC2175j5 = new EnumC2175j("MAY", 4);
        MAY = enumC2175j5;
        EnumC2175j enumC2175j6 = new EnumC2175j("JUNE", 5);
        JUNE = enumC2175j6;
        EnumC2175j enumC2175j7 = new EnumC2175j("JULY", 6);
        JULY = enumC2175j7;
        EnumC2175j enumC2175j8 = new EnumC2175j("AUGUST", 7);
        AUGUST = enumC2175j8;
        EnumC2175j enumC2175j9 = new EnumC2175j("SEPTEMBER", 8);
        SEPTEMBER = enumC2175j9;
        EnumC2175j enumC2175j10 = new EnumC2175j("OCTOBER", 9);
        OCTOBER = enumC2175j10;
        EnumC2175j enumC2175j11 = new EnumC2175j("NOVEMBER", 10);
        NOVEMBER = enumC2175j11;
        EnumC2175j enumC2175j12 = new EnumC2175j("DECEMBER", 11);
        DECEMBER = enumC2175j12;
        f803b = new EnumC2175j[]{enumC2175j, enumC2175j2, enumC2175j3, enumC2175j4, enumC2175j5, enumC2175j6, enumC2175j7, enumC2175j8, enumC2175j9, enumC2175j10, enumC2175j11, enumC2175j12};
        f802a = values();
    }

    /* JADX INFO: renamed from: E */
    public static EnumC2175j m754E(int i) {
        if (i < 1 || i > 12) {
            throw new C2108b("Invalid value for MonthOfYear: " + i);
        }
        return f802a[i - 1];
    }

    public final int getValue() {
        return ordinal() + 1;
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: e */
    public final boolean mo575e(InterfaceC2202q interfaceC2202q) {
        return interfaceC2202q instanceof EnumC2186a ? interfaceC2202q == EnumC2186a.MONTH_OF_YEAR : interfaceC2202q != null && interfaceC2202q.mo769h(this);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: j */
    public final C2206u mo577j(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q == EnumC2186a.MONTH_OF_YEAR) {
            return interfaceC2202q.mo771j();
        }
        return AbstractC2203r.m783d(this, interfaceC2202q);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: h */
    public final int mo576h(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q == EnumC2186a.MONTH_OF_YEAR) {
            return getValue();
        }
        return AbstractC2203r.m780a(this, interfaceC2202q);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: w */
    public final long mo580w(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q == EnumC2186a.MONTH_OF_YEAR) {
            return getValue();
        }
        if (interfaceC2202q instanceof EnumC2186a) {
            throw new C2205t(AbstractC2109c.m664a("Unsupported field: ", interfaceC2202q));
        }
        return interfaceC2202q.mo772k(this);
    }

    /* JADX INFO: renamed from: A */
    public final int m755A(boolean z) {
        int i = AbstractC2174i.f801a[ordinal()];
        return i != 1 ? (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31 : z ? 29 : 28;
    }

    /* JADX INFO: renamed from: D */
    public final int m756D() {
        int i = AbstractC2174i.f801a[ordinal()];
        if (i != 1) {
            return (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31;
        }
        return 29;
    }

    /* JADX INFO: renamed from: v */
    public final int m757v(boolean z) {
        switch (AbstractC2174i.f801a[ordinal()]) {
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

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: k */
    public final Object mo578k(C2148a c2148a) {
        if (c2148a == AbstractC2203r.f846b) {
            return C2136r.f714c;
        }
        if (c2148a == AbstractC2203r.f847c) {
            return EnumC2187b.MONTHS;
        }
        return AbstractC2203r.m782c(this, c2148a);
    }

    @Override // p022j$.time.temporal.InterfaceC2200o
    /* JADX INFO: renamed from: n */
    public final InterfaceC2198m mo579n(InterfaceC2198m interfaceC2198m) {
        if (!AbstractC2104a.m528N(interfaceC2198m).equals(C2136r.f714c)) {
            throw new C2108b("Adjustment only supported on ISO date-time");
        }
        return interfaceC2198m.mo588c(getValue(), EnumC2186a.MONTH_OF_YEAR);
    }
}
