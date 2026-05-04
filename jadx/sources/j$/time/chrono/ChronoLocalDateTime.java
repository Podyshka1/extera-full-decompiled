package j$.time.chrono;

import j$.time.C2034h;
import j$.time.Instant;
import j$.time.ZoneOffset;
import j$.time.chrono.InterfaceC1981b;
import j$.time.temporal.InterfaceC2059m;
import j$.time.temporal.InterfaceC2061o;

/* JADX INFO: loaded from: classes2.dex */
public interface ChronoLocalDateTime<D extends InterfaceC1981b> extends InterfaceC2059m, InterfaceC2061o, Comparable<ChronoLocalDateTime<?>> {
    /* JADX INFO: renamed from: a */
    InterfaceC1990k mo503a();

    /* JADX INFO: renamed from: b */
    C2034h mo504b();

    /* JADX INFO: renamed from: f */
    InterfaceC1981b mo505f();

    /* JADX INFO: renamed from: l */
    ChronoZonedDateTime mo506l(ZoneOffset zoneOffset);

    Instant toInstant(ZoneOffset zoneOffset);

    /* JADX INFO: renamed from: z */
    int compareTo(ChronoLocalDateTime chronoLocalDateTime);
}
