package p022j$.time;

import java.util.Locale;
import p022j$.time.format.C2148a;
import p022j$.time.format.C2160m;
import p022j$.time.format.C2163p;
import p022j$.time.format.C2168u;
import p022j$.time.format.EnumC2170w;
import p022j$.time.format.TextStyle;
import p022j$.time.temporal.AbstractC2203r;
import p022j$.time.temporal.C2205t;
import p022j$.time.temporal.C2206u;
import p022j$.time.temporal.EnumC2186a;
import p022j$.time.temporal.EnumC2187b;
import p022j$.time.temporal.InterfaceC2198m;
import p022j$.time.temporal.InterfaceC2199n;
import p022j$.time.temporal.InterfaceC2200o;
import p022j$.time.temporal.InterfaceC2202q;
import p022j$.util.Objects;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class DayOfWeek implements InterfaceC2199n, InterfaceC2200o {
    public static final DayOfWeek FRIDAY;
    public static final DayOfWeek MONDAY;
    public static final DayOfWeek SATURDAY;
    public static final DayOfWeek SUNDAY;
    public static final DayOfWeek THURSDAY;
    public static final DayOfWeek TUESDAY;
    public static final DayOfWeek WEDNESDAY;

    /* JADX INFO: renamed from: a */
    public static final DayOfWeek[] f630a;

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ DayOfWeek[] f631b;

    public static DayOfWeek valueOf(String str) {
        return (DayOfWeek) Enum.valueOf(DayOfWeek.class, str);
    }

    public static DayOfWeek[] values() {
        return (DayOfWeek[]) f631b.clone();
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
        f631b = new DayOfWeek[]{dayOfWeek, dayOfWeek2, dayOfWeek3, dayOfWeek4, dayOfWeek5, dayOfWeek6, dayOfWeek7};
        f630a = values();
    }

    /* JADX INFO: renamed from: v */
    public static DayOfWeek m574v(int i) {
        if (i < 1 || i > 7) {
            throw new C2108b("Invalid value for DayOfWeek: " + i);
        }
        return f630a[i - 1];
    }

    public final int getValue() {
        return ordinal() + 1;
    }

    public String getDisplayName(TextStyle textStyle, Locale locale) {
        C2163p c2163p = new C2163p();
        EnumC2186a enumC2186a = EnumC2186a.DAY_OF_WEEK;
        Objects.requireNonNull(enumC2186a, "field");
        Objects.requireNonNull(textStyle, "textStyle");
        c2163p.m724b(new C2160m(enumC2186a, textStyle, C2168u.f787c));
        return c2163p.m734l(locale, EnumC2170w.SMART, null).m715a(this);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: e */
    public final boolean mo575e(InterfaceC2202q interfaceC2202q) {
        return interfaceC2202q instanceof EnumC2186a ? interfaceC2202q == EnumC2186a.DAY_OF_WEEK : interfaceC2202q != null && interfaceC2202q.mo769h(this);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: j */
    public final C2206u mo577j(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q == EnumC2186a.DAY_OF_WEEK) {
            return interfaceC2202q.mo771j();
        }
        return AbstractC2203r.m783d(this, interfaceC2202q);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: h */
    public final int mo576h(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q == EnumC2186a.DAY_OF_WEEK) {
            return getValue();
        }
        return AbstractC2203r.m780a(this, interfaceC2202q);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: w */
    public final long mo580w(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q == EnumC2186a.DAY_OF_WEEK) {
            return getValue();
        }
        if (interfaceC2202q instanceof EnumC2186a) {
            throw new C2205t(AbstractC2109c.m664a("Unsupported field: ", interfaceC2202q));
        }
        return interfaceC2202q.mo772k(this);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: k */
    public final Object mo578k(C2148a c2148a) {
        if (c2148a == AbstractC2203r.f847c) {
            return EnumC2187b.DAYS;
        }
        return AbstractC2203r.m782c(this, c2148a);
    }

    @Override // p022j$.time.temporal.InterfaceC2200o
    /* JADX INFO: renamed from: n */
    public final InterfaceC2198m mo579n(InterfaceC2198m interfaceC2198m) {
        return interfaceC2198m.mo588c(getValue(), EnumC2186a.DAY_OF_WEEK);
    }
}
