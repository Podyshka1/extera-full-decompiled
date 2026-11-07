package j$.time.temporal;

import j$.time.Duration;

/* JADX INFO: renamed from: j$.time.temporal.h */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public enum EnumC2261h implements TemporalUnit {
    WEEK_BASED_YEARS("WeekBasedYears", Duration.ofSeconds(31556952)),
    QUARTER_YEARS("QuarterYears", Duration.ofSeconds(7889238));


    /* JADX INFO: renamed from: a */
    public final String f835a;

    /* JADX INFO: renamed from: b */
    public final Duration f836b;

    EnumC2261h(String str, Duration duration) {
        this.f835a = str;
        this.f836b = duration;
    }

    @Override // j$.time.temporal.TemporalUnit
    public final long between(Temporal temporal, Temporal temporal2) {
        if (temporal.getClass() != temporal2.getClass()) {
            return temporal.mo656n(temporal2, this);
        }
        int i = AbstractC2255b.f831a[ordinal()];
        if (i == 1) {
            EnumC2260g enumC2260g = AbstractC2262i.f839c;
            return Math.subtractExact(temporal2.mo532k(enumC2260g), temporal.mo532k(enumC2260g));
        }
        if (i == 2) {
            return temporal.mo656n(temporal2, ChronoUnit.MONTHS) / 3;
        }
        throw new IllegalStateException("Unreachable");
    }

    @Override // j$.time.temporal.TemporalUnit
    public final Duration getDuration() {
        return this.f836b;
    }

    @Override // j$.time.temporal.TemporalUnit
    public final boolean isDurationEstimated() {
        return true;
    }

    @Override // j$.time.temporal.TemporalUnit
    /* JADX INFO: renamed from: s */
    public final Temporal mo828s(Temporal temporal, long j) {
        int i = AbstractC2255b.f831a[ordinal()];
        if (i == 1) {
            return temporal.mo652a(Math.addExact(temporal.mo642g(r4), j), AbstractC2262i.f839c);
        }
        if (i == 2) {
            return temporal.mo653b(j / 4, ChronoUnit.YEARS).mo653b((j % 4) * 3, ChronoUnit.MONTHS);
        }
        throw new IllegalStateException("Unreachable");
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f835a;
    }
}
