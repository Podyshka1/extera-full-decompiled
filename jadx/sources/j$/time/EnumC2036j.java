package j$.time;

import com.android.dx.io.Opcodes;
import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.chrono.C1997r;
import j$.time.format.C2009a;
import j$.time.temporal.AbstractC2064r;
import j$.time.temporal.C2066t;
import j$.time.temporal.C2067u;
import j$.time.temporal.EnumC2047a;
import j$.time.temporal.EnumC2048b;
import j$.time.temporal.InterfaceC2059m;
import j$.time.temporal.InterfaceC2060n;
import j$.time.temporal.InterfaceC2061o;
import j$.time.temporal.InterfaceC2063q;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.j */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2036j implements InterfaceC2060n, InterfaceC2061o {
    public static final EnumC2036j APRIL;
    public static final EnumC2036j AUGUST;
    public static final EnumC2036j DECEMBER;
    public static final EnumC2036j FEBRUARY;
    public static final EnumC2036j JANUARY;
    public static final EnumC2036j JULY;
    public static final EnumC2036j JUNE;
    public static final EnumC2036j MARCH;
    public static final EnumC2036j MAY;
    public static final EnumC2036j NOVEMBER;
    public static final EnumC2036j OCTOBER;
    public static final EnumC2036j SEPTEMBER;

    /* JADX INFO: renamed from: a */
    public static final EnumC2036j[] f567a;

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ EnumC2036j[] f568b;

    public static EnumC2036j valueOf(String str) {
        return (EnumC2036j) Enum.valueOf(EnumC2036j.class, str);
    }

    public static EnumC2036j[] values() {
        return (EnumC2036j[]) f568b.clone();
    }

    static {
        EnumC2036j enumC2036j = new EnumC2036j("JANUARY", 0);
        JANUARY = enumC2036j;
        EnumC2036j enumC2036j2 = new EnumC2036j("FEBRUARY", 1);
        FEBRUARY = enumC2036j2;
        EnumC2036j enumC2036j3 = new EnumC2036j("MARCH", 2);
        MARCH = enumC2036j3;
        EnumC2036j enumC2036j4 = new EnumC2036j("APRIL", 3);
        APRIL = enumC2036j4;
        EnumC2036j enumC2036j5 = new EnumC2036j("MAY", 4);
        MAY = enumC2036j5;
        EnumC2036j enumC2036j6 = new EnumC2036j("JUNE", 5);
        JUNE = enumC2036j6;
        EnumC2036j enumC2036j7 = new EnumC2036j("JULY", 6);
        JULY = enumC2036j7;
        EnumC2036j enumC2036j8 = new EnumC2036j("AUGUST", 7);
        AUGUST = enumC2036j8;
        EnumC2036j enumC2036j9 = new EnumC2036j("SEPTEMBER", 8);
        SEPTEMBER = enumC2036j9;
        EnumC2036j enumC2036j10 = new EnumC2036j("OCTOBER", 9);
        OCTOBER = enumC2036j10;
        EnumC2036j enumC2036j11 = new EnumC2036j("NOVEMBER", 10);
        NOVEMBER = enumC2036j11;
        EnumC2036j enumC2036j12 = new EnumC2036j("DECEMBER", 11);
        DECEMBER = enumC2036j12;
        f568b = new EnumC2036j[]{enumC2036j, enumC2036j2, enumC2036j3, enumC2036j4, enumC2036j5, enumC2036j6, enumC2036j7, enumC2036j8, enumC2036j9, enumC2036j10, enumC2036j11, enumC2036j12};
        f567a = values();
    }

    /* JADX INFO: renamed from: E */
    public static EnumC2036j m631E(int i) {
        if (i < 1 || i > 12) {
            throw new C1969b("Invalid value for MonthOfYear: " + i);
        }
        return f567a[i - 1];
    }

    public final int getValue() {
        return ordinal() + 1;
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: e */
    public final boolean mo455e(InterfaceC2063q interfaceC2063q) {
        return interfaceC2063q instanceof EnumC2047a ? interfaceC2063q == EnumC2047a.MONTH_OF_YEAR : interfaceC2063q != null && interfaceC2063q.mo644h(this);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: j */
    public final C2067u mo457j(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q == EnumC2047a.MONTH_OF_YEAR) {
            return interfaceC2063q.mo646j();
        }
        return AbstractC2064r.m658d(this, interfaceC2063q);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: h */
    public final int mo456h(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q == EnumC2047a.MONTH_OF_YEAR) {
            return getValue();
        }
        return AbstractC2064r.m655a(this, interfaceC2063q);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: w */
    public final long mo460w(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q == EnumC2047a.MONTH_OF_YEAR) {
            return getValue();
        }
        if (interfaceC2063q instanceof EnumC2047a) {
            throw new C2066t(AbstractC1970c.m541a("Unsupported field: ", interfaceC2063q));
        }
        return interfaceC2063q.mo647k(this);
    }

    /* JADX INFO: renamed from: A */
    public final int m632A(boolean z) {
        int i = AbstractC2035i.f566a[ordinal()];
        return i != 1 ? (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31 : z ? 29 : 28;
    }

    /* JADX INFO: renamed from: D */
    public final int m633D() {
        int i = AbstractC2035i.f566a[ordinal()];
        if (i != 1) {
            return (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31;
        }
        return 29;
    }

    /* JADX INFO: renamed from: v */
    public final int m634v(boolean z) {
        switch (AbstractC2035i.f566a[ordinal()]) {
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

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: k */
    public final Object mo458k(C2009a c2009a) {
        if (c2009a == AbstractC2064r.f611b) {
            return C1997r.f480c;
        }
        if (c2009a == AbstractC2064r.f612c) {
            return EnumC2048b.MONTHS;
        }
        return AbstractC2064r.m657c(this, c2009a);
    }

    @Override // j$.time.temporal.InterfaceC2061o
    /* JADX INFO: renamed from: n */
    public final InterfaceC2059m mo459n(InterfaceC2059m interfaceC2059m) {
        if (!AbstractC1965a.m408N(interfaceC2059m).equals(C1997r.f480c)) {
            throw new C1969b("Adjustment only supported on ISO date-time");
        }
        return interfaceC2059m.mo468c(getValue(), EnumC2047a.MONTH_OF_YEAR);
    }
}
