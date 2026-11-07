package j$.time.temporal;

import j$.time.Duration;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public interface TemporalUnit {
    long between(Temporal temporal, Temporal temporal2);

    Duration getDuration();

    boolean isDurationEstimated();

    /* JADX INFO: renamed from: s */
    Temporal mo872s(Temporal temporal, long j);
}
