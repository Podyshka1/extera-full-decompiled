package j$.time;

import j$.time.format.C2009a;
import j$.time.format.C2021m;
import j$.time.format.C2024p;
import j$.time.format.C2029u;
import j$.time.format.EnumC2031w;
import j$.time.format.TextStyle;
import j$.time.temporal.AbstractC2064r;
import j$.time.temporal.C2066t;
import j$.time.temporal.C2067u;
import j$.time.temporal.EnumC2047a;
import j$.time.temporal.EnumC2048b;
import j$.time.temporal.InterfaceC2059m;
import j$.time.temporal.InterfaceC2060n;
import j$.time.temporal.InterfaceC2061o;
import j$.time.temporal.InterfaceC2063q;
import j$.util.Objects;
import java.util.Locale;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class DayOfWeek implements InterfaceC2060n, InterfaceC2061o {
    public static final DayOfWeek FRIDAY;
    public static final DayOfWeek MONDAY;
    public static final DayOfWeek SATURDAY;
    public static final DayOfWeek SUNDAY;
    public static final DayOfWeek THURSDAY;
    public static final DayOfWeek TUESDAY;
    public static final DayOfWeek WEDNESDAY;

    /* JADX INFO: renamed from: a */
    public static final DayOfWeek[] f398a;

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ DayOfWeek[] f399b;

    public static DayOfWeek valueOf(String str) {
        return (DayOfWeek) Enum.valueOf(DayOfWeek.class, str);
    }

    public static DayOfWeek[] values() {
        return (DayOfWeek[]) f399b.clone();
    }

    static {
        DayOfWeek dayOfWeek = new DayOfWeek("MONDAY", 0);
        MONDAY = dayOfWeek;
        DayOfWeek dayOfWeek2 = new DayOfWeek("TUESDAY", 1);
        TUESDAY = dayOfWeek2;
        DayOfWeek dayOfWeek3 = new DayOfWeek("WEDNESDAY", 2);
        WEDNESDAY = dayOfWeek3;
        DayOfWeek dayOfWeek4 = new DayOfWeek("THURSDAY", 3);
        THURSDAY = dayOfWeek4;
        DayOfWeek dayOfWeek5 = new DayOfWeek("FRIDAY", 4);
        FRIDAY = dayOfWeek5;
        DayOfWeek dayOfWeek6 = new DayOfWeek("SATURDAY", 5);
        SATURDAY = dayOfWeek6;
        DayOfWeek dayOfWeek7 = new DayOfWeek("SUNDAY", 6);
        SUNDAY = dayOfWeek7;
        f399b = new DayOfWeek[]{dayOfWeek, dayOfWeek2, dayOfWeek3, dayOfWeek4, dayOfWeek5, dayOfWeek6, dayOfWeek7};
        f398a = values();
    }

    /* JADX INFO: renamed from: v */
    public static DayOfWeek m454v(int i) {
        if (i < 1 || i > 7) {
            throw new C1969b("Invalid value for DayOfWeek: " + i);
        }
        return f398a[i - 1];
    }

    public final int getValue() {
        return ordinal() + 1;
    }

    public String getDisplayName(TextStyle textStyle, Locale locale) {
        C2024p c2024p = new C2024p();
        EnumC2047a enumC2047a = EnumC2047a.DAY_OF_WEEK;
        Objects.requireNonNull(enumC2047a, "field");
        Objects.requireNonNull(textStyle, "textStyle");
        c2024p.m601b(new C2021m(enumC2047a, textStyle, C2029u.f552c));
        return c2024p.m611l(locale, EnumC2031w.SMART, null).m592a(this);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: e */
    public final boolean mo455e(InterfaceC2063q interfaceC2063q) {
        return interfaceC2063q instanceof EnumC2047a ? interfaceC2063q == EnumC2047a.DAY_OF_WEEK : interfaceC2063q != null && interfaceC2063q.mo644h(this);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: j */
    public final C2067u mo457j(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q == EnumC2047a.DAY_OF_WEEK) {
            return interfaceC2063q.mo646j();
        }
        return AbstractC2064r.m658d(this, interfaceC2063q);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: h */
    public final int mo456h(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q == EnumC2047a.DAY_OF_WEEK) {
            return getValue();
        }
        return AbstractC2064r.m655a(this, interfaceC2063q);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: w */
    public final long mo460w(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q == EnumC2047a.DAY_OF_WEEK) {
            return getValue();
        }
        if (interfaceC2063q instanceof EnumC2047a) {
            throw new C2066t(AbstractC1970c.m541a("Unsupported field: ", interfaceC2063q));
        }
        return interfaceC2063q.mo647k(this);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: k */
    public final Object mo458k(C2009a c2009a) {
        if (c2009a == AbstractC2064r.f612c) {
            return EnumC2048b.DAYS;
        }
        return AbstractC2064r.m657c(this, c2009a);
    }

    @Override // j$.time.temporal.InterfaceC2061o
    /* JADX INFO: renamed from: n */
    public final InterfaceC2059m mo459n(InterfaceC2059m interfaceC2059m) {
        return interfaceC2059m.mo468c(getValue(), EnumC2047a.DAY_OF_WEEK);
    }
}
