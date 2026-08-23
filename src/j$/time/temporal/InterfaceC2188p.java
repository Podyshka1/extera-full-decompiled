package j$.time.temporal;

import j$.time.format.C2157y;
import j$.time.format.EnumC2158z;
import java.util.Map;

/* JADX INFO: renamed from: j$.time.temporal.p */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC2188p {
    /* JADX INFO: renamed from: B */
    C2192t mo715B(InterfaceC2184l interfaceC2184l);

    /* JADX INFO: renamed from: G */
    default InterfaceC2184l mo722G(Map map, C2157y c2157y, EnumC2158z enumC2158z) {
        return null;
    }

    /* JADX INFO: renamed from: I */
    C2192t mo716I();

    /* JADX INFO: renamed from: P */
    long mo717P(InterfaceC2184l interfaceC2184l);

    /* JADX INFO: renamed from: V */
    Temporal mo718V(Temporal temporal, long j);

    boolean isDateBased();

    /* JADX INFO: renamed from: t */
    boolean mo721t(InterfaceC2184l interfaceC2184l);
}
