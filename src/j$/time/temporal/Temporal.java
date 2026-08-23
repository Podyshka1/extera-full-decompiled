package j$.time.temporal;

import j$.time.LocalDate;
import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public interface Temporal extends InterfaceC2184l {
    /* JADX INFO: renamed from: a */
    Temporal mo496a(long j, InterfaceC2188p interfaceC2188p);

    /* JADX INFO: renamed from: b */
    Temporal mo497b(long j, InterfaceC2190r interfaceC2190r);

    /* JADX INFO: renamed from: c */
    default Temporal mo498c(long j, InterfaceC2190r interfaceC2190r) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = mo497b(LongCompanionObject.MAX_VALUE, interfaceC2190r);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.mo497b(j2, interfaceC2190r);
    }

    /* JADX INFO: renamed from: h */
    default Temporal mo515j(LocalDate localDate) {
        return localDate.mo483e(this);
    }

    /* JADX INFO: renamed from: o */
    long mo500o(Temporal temporal, InterfaceC2190r interfaceC2190r);
}
