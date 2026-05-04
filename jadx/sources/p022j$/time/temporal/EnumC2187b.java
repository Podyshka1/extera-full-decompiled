package p022j$.time.temporal;

import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.Duration;

/* JADX INFO: renamed from: j$.time.temporal.b */
/* JADX INFO: loaded from: classes2.dex */
public enum EnumC2187b implements InterfaceC2204s {
    NANOS("Nanos"),
    MICROS("Micros"),
    MILLIS("Millis"),
    SECONDS("Seconds"),
    MINUTES("Minutes"),
    HOURS("Hours"),
    HALF_DAYS("HalfDays"),
    DAYS("Days"),
    WEEKS("Weeks"),
    MONTHS("Months"),
    YEARS("Years"),
    DECADES("Decades"),
    CENTURIES("Centuries"),
    MILLENNIA("Millennia"),
    ERAS("Eras"),
    FOREVER("Forever");


    /* JADX INFO: renamed from: a */
    public final String f829a;

    static {
        Duration.m582i(1L);
        Duration.m582i(1000L);
        Duration.m582i(1000000L);
        Duration.ofSeconds(1L);
        Duration.ofSeconds(60L);
        Duration.ofSeconds(3600L);
        Duration.ofSeconds(43200L);
        Duration.ofSeconds(86400L);
        Duration.ofSeconds(604800L);
        Duration.ofSeconds(2629746L);
        Duration.ofSeconds(31556952L);
        Duration.ofSeconds(315569520L);
        Duration.ofSeconds(3155695200L);
        Duration.ofSeconds(31556952000L);
        Duration.ofSeconds(31556952000000000L);
        Duration.m581h(AbstractC2104a.m530P(Long.MAX_VALUE, AbstractC2104a.m534T(999999999L, 1000000000L)), (int) AbstractC2104a.m533S(999999999L, 1000000000L));
    }

    EnumC2187b(String str) {
        this.f829a = str;
    }

    @Override // p022j$.time.temporal.InterfaceC2204s
    /* JADX INFO: renamed from: h */
    public final InterfaceC2198m mo776h(InterfaceC2198m interfaceC2198m, long j) {
        return interfaceC2198m.mo589d(j, this);
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f829a;
    }
}
