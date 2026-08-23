package j$.time.temporal;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.Duration;

/* JADX INFO: renamed from: j$.time.temporal.b */
/* JADX INFO: loaded from: classes2.dex */
public enum EnumC2048b implements InterfaceC2065s {
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
    public final String f594a;

    static {
        Duration.m462i(1L);
        Duration.m462i(1000L);
        Duration.m462i(1000000L);
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
        Duration.m461h(AbstractC1965a.m410P(Long.MAX_VALUE, AbstractC1965a.m414T(999999999L, 1000000000L)), (int) AbstractC1965a.m413S(999999999L, 1000000000L));
    }

    EnumC2048b(String str) {
        this.f594a = str;
    }

    @Override // j$.time.temporal.InterfaceC2065s
    /* JADX INFO: renamed from: h */
    public final InterfaceC2059m mo651h(InterfaceC2059m interfaceC2059m, long j) {
        return interfaceC2059m.mo469d(j, this);
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f594a;
    }
}
