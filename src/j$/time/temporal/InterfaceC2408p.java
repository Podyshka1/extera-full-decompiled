package j$.time.temporal;

import j$.time.format.C2379y;
import j$.time.format.EnumC2380z;
import java.util.Map;

/* JADX INFO: renamed from: j$.time.temporal.p */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC2408p {
    /* JADX INFO: renamed from: D */
    C2411s mo873D(InterfaceC2404l interfaceC2404l);

    /* JADX INFO: renamed from: I */
    default InterfaceC2404l mo880I(Map map, C2379y c2379y, EnumC2380z enumC2380z) {
        return null;
    }

    /* JADX INFO: renamed from: K */
    C2411s mo874K();

    /* JADX INFO: renamed from: R */
    long mo875R(InterfaceC2404l interfaceC2404l);

    /* JADX INFO: renamed from: X */
    Temporal mo876X(Temporal temporal, long j);

    boolean isDateBased();

    /* JADX INFO: renamed from: s */
    boolean mo879s(InterfaceC2404l interfaceC2404l);
}
