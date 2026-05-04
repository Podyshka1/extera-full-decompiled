package j$.time.chrono;

import j$.time.C2034h;
import j$.time.Instant;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.chrono.InterfaceC1981b;
import j$.time.temporal.InterfaceC2059m;

/* JADX INFO: loaded from: classes2.dex */
public interface ChronoZonedDateTime<D extends InterfaceC1981b> extends InterfaceC2059m, Comparable<ChronoZonedDateTime<?>> {
    /* JADX INFO: renamed from: C */
    long mo531C();

    /* JADX INFO: renamed from: a */
    InterfaceC1990k mo534a();

    /* JADX INFO: renamed from: b */
    C2034h mo535b();

    /* JADX INFO: renamed from: f */
    InterfaceC1981b mo536f();

    /* JADX INFO: renamed from: g */
    ZoneOffset mo537g();

    /* JADX INFO: renamed from: o */
    ChronoLocalDateTime mo538o();

    /* JADX INFO: renamed from: q */
    ChronoZonedDateTime mo539q(ZoneId zoneId);

    Instant toInstant();

    /* JADX INFO: renamed from: u */
    ZoneId mo540u();
}
