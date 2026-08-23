package j$.time.temporal;

import j$.time.Duration;

/* JADX INFO: renamed from: j$.time.temporal.h */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public enum EnumC2180h implements InterfaceC2190r {
    WEEK_BASED_YEARS("WeekBasedYears"),
    QUARTER_YEARS("QuarterYears");


    /* JADX INFO: renamed from: a */
    public final String f686a;

    static {
        Duration.ofSeconds(31556952L);
        Duration.ofSeconds(7889238L);
    }

    EnumC2180h(String str) {
        this.f686a = str;
    }

    @Override // j$.time.temporal.InterfaceC2190r
    public final long between(Temporal temporal, Temporal temporal2) {
        if (temporal.getClass() != temporal2.getClass()) {
            return temporal.mo500o(temporal2, this);
        }
        int i = AbstractC2174b.f682a[ordinal()];
        if (i == 1) {
            EnumC2179g enumC2179g = AbstractC2181i.f689c;
            return Math.subtractExact(temporal2.mo486k(enumC2179g), temporal.mo486k(enumC2179g));
        }
        if (i == 2) {
            return temporal.mo500o(temporal2, ChronoUnit.MONTHS) / 3;
        }
        throw new IllegalStateException("Unreachable");
    }

    @Override // j$.time.temporal.InterfaceC2190r
    /* JADX INFO: renamed from: t */
    public final Temporal mo714t(Temporal temporal, long j) {
        int i = AbstractC2174b.f682a[ordinal()];
        if (i == 1) {
            return temporal.mo496a(Math.addExact(temporal.mo484g(r4), j), AbstractC2181i.f689c);
        }
        if (i == 2) {
            return temporal.mo497b(j / 4, ChronoUnit.YEARS).mo497b((j % 4) * 3, ChronoUnit.MONTHS);
        }
        throw new IllegalStateException("Unreachable");
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f686a;
    }
}
