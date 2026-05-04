package j$.time.temporal;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.Duration;

/* JADX INFO: renamed from: j$.time.temporal.i */
/* JADX INFO: loaded from: classes2.dex */
public enum EnumC2055i implements InterfaceC2065s {
    WEEK_BASED_YEARS("WeekBasedYears"),
    QUARTER_YEARS("QuarterYears");


    /* JADX INFO: renamed from: a */
    public final String f599a;

    static {
        Duration.ofSeconds(31556952L);
        Duration.ofSeconds(7889238L);
    }

    EnumC2055i(String str) {
        this.f599a = str;
    }

    @Override // j$.time.temporal.InterfaceC2065s
    /* JADX INFO: renamed from: h */
    public final InterfaceC2059m mo651h(InterfaceC2059m interfaceC2059m, long j) {
        int i = AbstractC2049c.f595a[ordinal()];
        if (i == 1) {
            return interfaceC2059m.mo468c(AbstractC1965a.m410P(interfaceC2059m.mo456h(r0), j), AbstractC2056j.f602c);
        }
        if (i == 2) {
            return interfaceC2059m.mo469d(j / 4, EnumC2048b.YEARS).mo469d((j % 4) * 3, EnumC2048b.MONTHS);
        }
        throw new IllegalStateException("Unreachable");
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f599a;
    }
}
