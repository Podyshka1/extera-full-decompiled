package p022j$.time.temporal;

import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.Duration;

/* JADX INFO: renamed from: j$.time.temporal.i */
/* JADX INFO: loaded from: classes2.dex */
public enum EnumC2194i implements InterfaceC2204s {
    WEEK_BASED_YEARS("WeekBasedYears"),
    QUARTER_YEARS("QuarterYears");


    /* JADX INFO: renamed from: a */
    public final String f834a;

    static {
        Duration.ofSeconds(31556952L);
        Duration.ofSeconds(7889238L);
    }

    EnumC2194i(String str) {
        this.f834a = str;
    }

    @Override // p022j$.time.temporal.InterfaceC2204s
    /* JADX INFO: renamed from: h */
    public final InterfaceC2198m mo776h(InterfaceC2198m interfaceC2198m, long j) {
        int i = AbstractC2188c.f830a[ordinal()];
        if (i == 1) {
            return interfaceC2198m.mo588c(AbstractC2104a.m530P(interfaceC2198m.mo576h(r0), j), AbstractC2195j.f837c);
        }
        if (i == 2) {
            return interfaceC2198m.mo589d(j / 4, EnumC2187b.YEARS).mo589d((j % 4) * 3, EnumC2187b.MONTHS);
        }
        throw new IllegalStateException("Unreachable");
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f834a;
    }
}
