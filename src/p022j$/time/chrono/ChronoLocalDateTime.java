package p022j$.time.chrono;

import p022j$.time.C2173h;
import p022j$.time.Instant;
import p022j$.time.ZoneOffset;
import p022j$.time.chrono.InterfaceC2120b;
import p022j$.time.temporal.InterfaceC2198m;
import p022j$.time.temporal.InterfaceC2200o;

/* JADX INFO: loaded from: classes2.dex */
public interface ChronoLocalDateTime<D extends InterfaceC2120b> extends InterfaceC2198m, InterfaceC2200o, Comparable<ChronoLocalDateTime<?>> {
    /* JADX INFO: renamed from: a */
    InterfaceC2129k mo624a();

    /* JADX INFO: renamed from: b */
    C2173h mo625b();

    /* JADX INFO: renamed from: f */
    InterfaceC2120b mo626f();

    /* JADX INFO: renamed from: l */
    ChronoZonedDateTime mo627l(ZoneOffset zoneOffset);

    Instant toInstant(ZoneOffset zoneOffset);

    /* JADX INFO: renamed from: z */
    int compareTo(ChronoLocalDateTime chronoLocalDateTime);
}
