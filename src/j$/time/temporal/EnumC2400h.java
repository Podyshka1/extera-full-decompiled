package j$.time.temporal;

import j$.time.Duration;

/* JADX INFO: renamed from: j$.time.temporal.h */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public enum EnumC2400h implements TemporalUnit {
    WEEK_BASED_YEARS("WeekBasedYears", Duration.ofSeconds(31556952)),
    QUARTER_YEARS("QuarterYears", Duration.ofSeconds(7889238));


    /* JADX INFO: renamed from: a */
    public final String f837a;

    /* JADX INFO: renamed from: b */
    public final Duration f838b;

    EnumC2400h(String str, Duration duration) {
        this.f837a = str;
        this.f838b = duration;
    }

    @Override // j$.time.temporal.TemporalUnit
    public final long between(Temporal temporal, Temporal temporal2) {
        if (temporal.getClass() != temporal2.getClass()) {
            return temporal.mo680n(temporal2, this);
        }
        int i = AbstractC2394b.f833a[ordinal()];
        if (i == 1) {
            EnumC2399g enumC2399g = AbstractC2401i.f841c;
            return Math.subtractExact(temporal2.mo556k(enumC2399g), temporal.mo556k(enumC2399g));
        }
        if (i == 2) {
            return temporal.mo680n(temporal2, ChronoUnit.MONTHS) / 3;
        }
        throw new IllegalStateException("Unreachable");
    }

    @Override // j$.time.temporal.TemporalUnit
    public final Duration getDuration() {
        return this.f838b;
    }

    @Override // j$.time.temporal.TemporalUnit
    public final boolean isDurationEstimated() {
        return true;
    }

    @Override // j$.time.temporal.TemporalUnit
    /* JADX INFO: renamed from: s */
    public final Temporal mo872s(Temporal temporal, long j) {
        int i = AbstractC2394b.f833a[ordinal()];
        if (i == 1) {
            return temporal.mo676a(Math.addExact(temporal.mo666g(r4), j), AbstractC2401i.f841c);
        }
        if (i == 2) {
            return temporal.mo677b(j / 4, ChronoUnit.YEARS).mo677b((j % 4) * 3, ChronoUnit.MONTHS);
        }
        throw new IllegalStateException("Unreachable");
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f837a;
    }
}
