package j$.time;

import j$.time.format.C2146n;
import j$.time.format.C2149q;
import j$.time.format.C2155w;
import j$.time.format.EnumC2158z;
import j$.time.format.TextStyle;
import j$.time.temporal.AbstractC2189q;
import j$.time.temporal.C2191s;
import j$.time.temporal.C2192t;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2184l;
import j$.time.temporal.InterfaceC2185m;
import j$.time.temporal.InterfaceC2188p;
import j$.time.temporal.Temporal;
import java.util.Locale;
import java.util.Objects;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class DayOfWeek implements InterfaceC2184l, InterfaceC2185m {
    public static final DayOfWeek FRIDAY;
    public static final DayOfWeek MONDAY;
    public static final DayOfWeek SATURDAY;
    public static final DayOfWeek SUNDAY;
    public static final DayOfWeek THURSDAY;
    public static final DayOfWeek TUESDAY;
    public static final DayOfWeek WEDNESDAY;

    /* JADX INFO: renamed from: a */
    public static final DayOfWeek[] f461a;

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ DayOfWeek[] f462b;

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
        f462b = new DayOfWeek[]{dayOfWeek, dayOfWeek2, dayOfWeek3, dayOfWeek4, dayOfWeek5, dayOfWeek6, dayOfWeek7};
        f461a = values();
    }

    /* JADX INFO: renamed from: t */
    public static DayOfWeek m481t(int i) {
        if (i >= 1 && i <= 7) {
            return f461a[i - 1];
        }
        C2159g.m685b("Invalid value for DayOfWeek: ", i);
        return null;
    }

    public static DayOfWeek valueOf(String str) {
        return (DayOfWeek) Enum.valueOf(DayOfWeek.class, str);
    }

    public static DayOfWeek[] values() {
        return (DayOfWeek[]) f462b.clone();
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: d */
    public final Object mo482d(C2196x c2196x) {
        return c2196x == AbstractC2189q.f699c ? ChronoUnit.DAYS : super.mo482d(c2196x);
    }

    @Override // j$.time.temporal.InterfaceC2185m
    /* JADX INFO: renamed from: e */
    public final Temporal mo483e(Temporal temporal) {
        return temporal.mo496a(getValue(), EnumC2173a.DAY_OF_WEEK);
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: g */
    public final int mo484g(InterfaceC2188p interfaceC2188p) {
        return interfaceC2188p == EnumC2173a.DAY_OF_WEEK ? getValue() : super.mo484g(interfaceC2188p);
    }

    public String getDisplayName(TextStyle textStyle, Locale locale) {
        C2149q c2149q = new C2149q();
        EnumC2173a enumC2173a = EnumC2173a.DAY_OF_WEEK;
        Objects.requireNonNull(enumC2173a, "field");
        Objects.requireNonNull(textStyle, "textStyle");
        c2149q.m654b(new C2146n(enumC2173a, textStyle, C2155w.f637c));
        return c2149q.m664l(locale, EnumC2158z.SMART, null).m630a(this);
    }

    public final int getValue() {
        return ordinal() + 1;
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: i */
    public final boolean mo485i(InterfaceC2188p interfaceC2188p) {
        return interfaceC2188p instanceof EnumC2173a ? interfaceC2188p == EnumC2173a.DAY_OF_WEEK : interfaceC2188p != null && interfaceC2188p.mo721t(this);
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: k */
    public final long mo486k(InterfaceC2188p interfaceC2188p) {
        if (interfaceC2188p == EnumC2173a.DAY_OF_WEEK) {
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
        return interfaceC2188p == EnumC2173a.DAY_OF_WEEK ? interfaceC2188p.mo716I() : super.mo487m(interfaceC2188p);
    }
}
