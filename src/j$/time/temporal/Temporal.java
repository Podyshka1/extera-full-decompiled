package j$.time.temporal;

import j$.time.LocalDate;
import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public interface Temporal extends InterfaceC2404l {
    /* JADX INFO: renamed from: a */
    Temporal mo676a(long j, InterfaceC2408p interfaceC2408p);

    /* JADX INFO: renamed from: b */
    Temporal mo677b(long j, TemporalUnit temporalUnit);

    /* JADX INFO: renamed from: c */
    default Temporal mo678c(long j, TemporalUnit temporalUnit) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = mo677b(LongCompanionObject.MAX_VALUE, temporalUnit);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.mo677b(j2, temporalUnit);
    }

    /* JADX INFO: renamed from: h */
    default Temporal mo693j(LocalDate localDate) {
        return localDate.mo665e(this);
    }

    /* JADX INFO: renamed from: n */
    long mo680n(Temporal temporal, TemporalUnit temporalUnit);
}
