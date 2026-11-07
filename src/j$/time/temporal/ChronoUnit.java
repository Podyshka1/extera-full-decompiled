package j$.time.temporal;

import j$.time.Duration;
import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public enum ChronoUnit implements TemporalUnit {
    NANOS("Nanos", Duration.ofNanos(1)),
    MICROS("Micros", Duration.ofNanos(1000)),
    MILLIS("Millis", Duration.ofNanos(1000000)),
    SECONDS("Seconds", Duration.ofSeconds(1)),
    MINUTES("Minutes", Duration.ofSeconds(60)),
    HOURS("Hours", Duration.ofSeconds(3600)),
    HALF_DAYS("HalfDays", Duration.ofSeconds(43200)),
    DAYS("Days", Duration.ofSeconds(86400)),
    WEEKS("Weeks", Duration.ofSeconds(604800)),
    MONTHS("Months", Duration.ofSeconds(2629746)),
    YEARS("Years", Duration.ofSeconds(31556952)),
    DECADES("Decades", Duration.ofSeconds(315569520)),
    CENTURIES("Centuries", Duration.ofSeconds(3155695200L)),
    MILLENNIA("Millennia", Duration.ofSeconds(31556952000L)),
    ERAS("Eras", Duration.ofSeconds(31556952000000000L)),
    FOREVER("Forever", Duration.ofSeconds(LongCompanionObject.MAX_VALUE, 999999999));


    /* JADX INFO: renamed from: a */
    public final String f826a;

    /* JADX INFO: renamed from: b */
    public final Duration f827b;

    ChronoUnit(String str, Duration duration) {
        this.f826a = str;
        this.f827b = duration;
    }

    @Override // j$.time.temporal.TemporalUnit
    public long between(Temporal temporal, Temporal temporal2) {
        return temporal.mo656n(temporal2, this);
    }

    @Override // j$.time.temporal.TemporalUnit
    public final Duration getDuration() {
        return this.f827b;
    }

    @Override // j$.time.temporal.TemporalUnit
    public final boolean isDurationEstimated() {
        return compareTo(DAYS) >= 0;
    }

    @Override // j$.time.temporal.TemporalUnit
    /* JADX INFO: renamed from: s */
    public final Temporal mo828s(Temporal temporal, long j) {
        return temporal.mo653b(j, this);
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f826a;
    }
}
