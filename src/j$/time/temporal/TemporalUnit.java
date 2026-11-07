package j$.time.temporal;

import j$.time.Duration;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public interface TemporalUnit {
    long between(Temporal temporal, Temporal temporal2);

    Duration getDuration();

    boolean isDurationEstimated();

    /* JADX INFO: renamed from: s */
    Temporal mo828s(Temporal temporal, long j);
}
