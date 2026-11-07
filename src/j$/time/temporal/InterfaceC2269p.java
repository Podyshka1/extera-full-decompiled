package j$.time.temporal;

import j$.time.format.C2239y;
import j$.time.format.EnumC2240z;
import java.util.Map;

/* JADX INFO: renamed from: j$.time.temporal.p */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC2269p {
    /* JADX INFO: renamed from: D */
    C2272s mo829D(InterfaceC2265l interfaceC2265l);

    /* JADX INFO: renamed from: I */
    default InterfaceC2265l mo834I(Map map, C2239y c2239y, EnumC2240z enumC2240z) {
        return null;
    }

    /* JADX INFO: renamed from: K */
    C2272s mo830K();

    /* JADX INFO: renamed from: S */
    long mo831S(InterfaceC2265l interfaceC2265l);

    /* JADX INFO: renamed from: Y */
    Temporal mo832Y(Temporal temporal, long j);

    boolean isDateBased();

    /* JADX INFO: renamed from: s */
    boolean mo833s(InterfaceC2265l interfaceC2265l);
}
