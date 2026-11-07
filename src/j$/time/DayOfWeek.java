package j$.time;

import j$.nio.file.C2148b;
import j$.time.format.C2228n;
import j$.time.format.C2231q;
import j$.time.format.C2237w;
import j$.time.format.EnumC2240z;
import j$.time.format.TextStyle;
import j$.time.temporal.AbstractC2270q;
import j$.time.temporal.C2271r;
import j$.time.temporal.C2272s;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2265l;
import j$.time.temporal.InterfaceC2266m;
import j$.time.temporal.InterfaceC2269p;
import j$.time.temporal.Temporal;
import java.util.Locale;
import java.util.Objects;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class DayOfWeek implements InterfaceC2265l, InterfaceC2266m {
    public static final DayOfWeek FRIDAY;
    public static final DayOfWeek MONDAY;
    public static final DayOfWeek SATURDAY;
    public static final DayOfWeek SUNDAY;
    public static final DayOfWeek THURSDAY;
    public static final DayOfWeek TUESDAY;
    public static final DayOfWeek WEDNESDAY;

    /* JADX INFO: renamed from: a */
    public static final DayOfWeek[] f599a;

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ DayOfWeek[] f600b;

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
        f600b = new DayOfWeek[]{dayOfWeek, dayOfWeek2, dayOfWeek3, dayOfWeek4, dayOfWeek5, dayOfWeek6, dayOfWeek7};
        f599a = values();
    }

    /* JADX INFO: renamed from: s */
    public static DayOfWeek m640s(int i) {
        if (i >= 1 && i <= 7) {
            return f599a[i - 1];
        }
        C2148b.m609b("Invalid value for DayOfWeek: ", i);
        return null;
    }

    public static DayOfWeek valueOf(String str) {
        return (DayOfWeek) Enum.valueOf(DayOfWeek.class, str);
    }

    public static DayOfWeek[] values() {
        return (DayOfWeek[]) f600b.clone();
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: d */
    public final Object mo530d(C2213e c2213e) {
        return c2213e == AbstractC2270q.f849c ? ChronoUnit.DAYS : super.mo530d(c2213e);
    }

    @Override // j$.time.temporal.InterfaceC2266m
    /* JADX INFO: renamed from: e */
    public final Temporal mo641e(Temporal temporal) {
        return temporal.mo652a(getValue(), EnumC2254a.DAY_OF_WEEK);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: g */
    public final int mo642g(InterfaceC2269p interfaceC2269p) {
        return interfaceC2269p == EnumC2254a.DAY_OF_WEEK ? getValue() : super.mo642g(interfaceC2269p);
    }

    public String getDisplayName(TextStyle textStyle, Locale locale) {
        C2231q c2231q = new C2231q();
        EnumC2254a enumC2254a = EnumC2254a.DAY_OF_WEEK;
        Objects.requireNonNull(enumC2254a, "field");
        Objects.requireNonNull(textStyle, "textStyle");
        c2231q.m792b(new C2228n(enumC2254a, textStyle, C2237w.f793c));
        return c2231q.m802l(locale, EnumC2240z.SMART, null).m767a(this);
    }

    public final int getValue() {
        return ordinal() + 1;
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: i */
    public final boolean mo531i(InterfaceC2269p interfaceC2269p) {
        return interfaceC2269p instanceof EnumC2254a ? interfaceC2269p == EnumC2254a.DAY_OF_WEEK : interfaceC2269p != null && interfaceC2269p.mo833s(this);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: k */
    public final long mo532k(InterfaceC2269p interfaceC2269p) {
        if (interfaceC2269p == EnumC2254a.DAY_OF_WEEK) {
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
        return interfaceC2269p == EnumC2254a.DAY_OF_WEEK ? interfaceC2269p.mo830K() : super.mo643l(interfaceC2269p);
    }
}
