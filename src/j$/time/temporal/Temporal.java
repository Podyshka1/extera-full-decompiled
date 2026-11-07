package j$.time.temporal;

import j$.time.LocalDate;
import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public interface Temporal extends InterfaceC2265l {
    /* JADX INFO: renamed from: a */
    Temporal mo652a(long j, InterfaceC2269p interfaceC2269p);

    /* JADX INFO: renamed from: b */
    Temporal mo653b(long j, TemporalUnit temporalUnit);

    /* JADX INFO: renamed from: c */
    default Temporal mo654c(long j, TemporalUnit temporalUnit) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = mo653b(LongCompanionObject.MAX_VALUE, temporalUnit);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.mo653b(j2, temporalUnit);
    }

    /* JADX INFO: renamed from: h */
    default Temporal mo668j(LocalDate localDate) {
        return localDate.mo641e(this);
    }

    /* JADX INFO: renamed from: n */
    long mo656n(Temporal temporal, TemporalUnit temporalUnit);
}
