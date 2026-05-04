package p022j$.time.chrono;

import p022j$.time.C2173h;
import p022j$.time.Instant;
import p022j$.time.ZoneId;
import p022j$.time.ZoneOffset;
import p022j$.time.chrono.InterfaceC2120b;
import p022j$.time.temporal.InterfaceC2198m;

/* JADX INFO: loaded from: classes2.dex */
public interface ChronoZonedDateTime<D extends InterfaceC2120b> extends InterfaceC2198m, Comparable<ChronoZonedDateTime<?>> {
    /* JADX INFO: renamed from: C */
    long mo654C();

    /* JADX INFO: renamed from: a */
    InterfaceC2129k mo657a();

    /* JADX INFO: renamed from: b */
    C2173h mo658b();

    /* JADX INFO: renamed from: f */
    InterfaceC2120b mo659f();

    /* JADX INFO: renamed from: g */
    ZoneOffset mo660g();

    /* JADX INFO: renamed from: o */
    ChronoLocalDateTime mo661o();

    /* JADX INFO: renamed from: q */
    ChronoZonedDateTime mo662q(ZoneId zoneId);

    Instant toInstant();

    /* JADX INFO: renamed from: u */
    ZoneId mo663u();
}
