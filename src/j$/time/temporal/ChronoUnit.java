package j$.time.temporal;

import j$.time.Duration;
import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public enum ChronoUnit implements InterfaceC2190r {
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
    public final String f678a;

    static {
        Duration.m489G(1L);
        Duration.m489G(1000L);
        Duration.m489G(1000000L);
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
        Duration.ofSeconds(LongCompanionObject.MAX_VALUE, 999999999L);
    }

    ChronoUnit(String str) {
        this.f678a = str;
    }

    @Override // j$.time.temporal.InterfaceC2190r
    public long between(Temporal temporal, Temporal temporal2) {
        return temporal.mo500o(temporal2, this);
    }

    @Override // j$.time.temporal.InterfaceC2190r
    /* JADX INFO: renamed from: t */
    public final Temporal mo714t(Temporal temporal, long j) {
        return temporal.mo497b(j, this);
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f678a;
    }
}
