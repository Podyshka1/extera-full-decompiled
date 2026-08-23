package j$.time.chrono;

import j$.time.C2159g;
import j$.time.C2162j;
import j$.time.ZoneId;
import j$.time.temporal.C2192t;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2185m;
import j$.time.temporal.InterfaceC2188p;
import j$.time.temporal.InterfaceC2190r;
import j$.time.temporal.Temporal;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Objects;
import kotlin.time.DurationKt;

/* JADX INFO: renamed from: j$.time.chrono.f */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2109f implements ChronoLocalDateTime, Temporal, InterfaceC2185m, Serializable {
    private static final long serialVersionUID = 4556003607393004514L;

    /* JADX INFO: renamed from: a */
    public final transient InterfaceC2105b f510a;

    /* JADX INFO: renamed from: b */
    public final transient C2162j f511b;

    public C2109f(InterfaceC2105b interfaceC2105b, C2162j c2162j) {
        Objects.requireNonNull(c2162j, "time");
        this.f510a = interfaceC2105b;
        this.f511b = c2162j;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX INFO: renamed from: t */
    public static C2109f m588t(InterfaceC2114k interfaceC2114k, Temporal temporal) {
        C2109f c2109f = (C2109f) temporal;
        if (interfaceC2114k.equals(c2109f.m569f())) {
            return c2109f;
        }
        C2159g.m688e("Chronology mismatch, required: ", interfaceC2114k.getId(), c2109f.m569f().getId());
        return null;
    }

    private Object writeReplace() {
        return new d0((byte) 2, this);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public final C2109f mo497b(long j, InterfaceC2190r interfaceC2190r) {
        if (!(interfaceC2190r instanceof ChronoUnit)) {
            return m588t(this.f510a.mo514f(), interfaceC2190r.mo714t(this, j));
        }
        switch (AbstractC2108e.f508a[((ChronoUnit) interfaceC2190r).ordinal()]) {
            case 1:
                return m590G(this.f510a, 0L, 0L, 0L, j);
            case 2:
                C2109f c2109fM592P = m592P(this.f510a.mo497b(j / 86400000000L, (InterfaceC2190r) ChronoUnit.DAYS), this.f511b);
                return c2109fM592P.m590G(c2109fM592P.f510a, 0L, 0L, 0L, (j % 86400000000L) * 1000);
            case 3:
                C2109f c2109fM592P2 = m592P(this.f510a.mo497b(j / DurationKt.MILLIS_IN_DAY, (InterfaceC2190r) ChronoUnit.DAYS), this.f511b);
                return c2109fM592P2.m590G(c2109fM592P2.f510a, 0L, 0L, 0L, (j % DurationKt.MILLIS_IN_DAY) * 1000000);
            case 4:
                return m590G(this.f510a, 0L, 0L, j, 0L);
            case 5:
                return m590G(this.f510a, 0L, j, 0L, 0L);
            case 6:
                return m590G(this.f510a, j, 0L, 0L, 0L);
            case 7:
                C2109f c2109fM592P3 = m592P(this.f510a.mo497b(j / 256, (InterfaceC2190r) ChronoUnit.DAYS), this.f511b);
                return c2109fM592P3.m590G(c2109fM592P3.f510a, (j % 256) * 12, 0L, 0L, 0L);
            default:
                return m592P(this.f510a.mo497b(j, interfaceC2190r), this.f511b);
        }
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: F */
    public final ChronoZonedDateTime mo520F(ZoneId zoneId) {
        return C2113j.m608B(zoneId, null, this);
    }

    /* JADX INFO: renamed from: G */
    public final C2109f m590G(InterfaceC2105b interfaceC2105b, long j, long j2, long j3, long j4) {
        long j5 = j | j2 | j3 | j4;
        C2162j c2162j = this.f511b;
        if (j5 == 0) {
            return m592P(interfaceC2105b, c2162j);
        }
        long j6 = j / 24;
        long jD0 = c2162j.d0();
        long j7 = ((j % 24) * 3600000000000L) + ((j2 % 1440) * 60000000000L) + ((j3 % 86400) * 1000000000) + (j4 % 86400000000000L) + jD0;
        long jFloorDiv = Math.floorDiv(j7, 86400000000000L) + j6 + (j2 / 1440) + (j3 / 86400) + (j4 / 86400000000000L);
        long jFloorMod = Math.floorMod(j7, 86400000000000L);
        return m592P(interfaceC2105b.mo497b(jFloorDiv, (InterfaceC2190r) ChronoUnit.DAYS), jFloorMod == jD0 ? this.f511b : C2162j.m696V(jFloorMod));
    }

    @Override // j$.time.chrono.ChronoLocalDateTime, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public final C2109f mo496a(long j, InterfaceC2188p interfaceC2188p) {
        if (!(interfaceC2188p instanceof EnumC2173a)) {
            return m588t(this.f510a.mo514f(), interfaceC2188p.mo718V(this, j));
        }
        boolean zM720Y = ((EnumC2173a) interfaceC2188p).m720Y();
        InterfaceC2105b interfaceC2105b = this.f510a;
        return zM720Y ? m592P(interfaceC2105b, this.f511b.mo496a(j, interfaceC2188p)) : m592P(interfaceC2105b.mo496a(j, interfaceC2188p), this.f511b);
    }

    /* JADX INFO: renamed from: P */
    public final C2109f m592P(Temporal temporal, C2162j c2162j) {
        InterfaceC2105b interfaceC2105b = this.f510a;
        return (interfaceC2105b == temporal && this.f511b == c2162j) ? this : new C2109f(AbstractC2107d.m586t(interfaceC2105b.mo514f(), temporal), c2162j);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: V, reason: merged with bridge method [inline-methods] */
    public final C2109f mo559j(InterfaceC2185m interfaceC2185m) {
        if (interfaceC2185m instanceof InterfaceC2105b) {
            return m592P((InterfaceC2105b) interfaceC2185m, this.f511b);
        }
        boolean z = interfaceC2185m instanceof C2162j;
        InterfaceC2105b interfaceC2105b = this.f510a;
        return z ? m592P(interfaceC2105b, (C2162j) interfaceC2185m) : interfaceC2185m instanceof C2109f ? m588t(interfaceC2105b.mo514f(), (C2109f) interfaceC2185m) : m588t(interfaceC2105b.mo514f(), (C2109f) interfaceC2185m.mo483e(this));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ChronoLocalDateTime) && compareTo((ChronoLocalDateTime) obj) == 0;
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: g */
    public final int mo484g(InterfaceC2188p interfaceC2188p) {
        return interfaceC2188p instanceof EnumC2173a ? ((EnumC2173a) interfaceC2188p).m720Y() ? this.f511b.mo484g(interfaceC2188p) : this.f510a.mo484g(interfaceC2188p) : mo487m(interfaceC2188p).m728a(mo486k(interfaceC2188p), interfaceC2188p);
    }

    public final int hashCode() {
        return this.f511b.hashCode() ^ this.f510a.hashCode();
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: i */
    public final boolean mo485i(InterfaceC2188p interfaceC2188p) {
        if (!(interfaceC2188p instanceof EnumC2173a)) {
            return interfaceC2188p != null && interfaceC2188p.mo721t(this);
        }
        EnumC2173a enumC2173a = (EnumC2173a) interfaceC2188p;
        return enumC2173a.isDateBased() || enumC2173a.m720Y();
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: k */
    public final long mo486k(InterfaceC2188p interfaceC2188p) {
        return interfaceC2188p instanceof EnumC2173a ? ((EnumC2173a) interfaceC2188p).m720Y() ? this.f511b.mo486k(interfaceC2188p) : this.f510a.mo486k(interfaceC2188p) : interfaceC2188p.mo717P(this);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: l */
    public final C2162j mo528l() {
        return this.f511b;
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: m */
    public final C2192t mo487m(InterfaceC2188p interfaceC2188p) {
        if (interfaceC2188p instanceof EnumC2173a) {
            return (((EnumC2173a) interfaceC2188p).m720Y() ? this.f511b : this.f510a).mo487m(interfaceC2188p);
        }
        return interfaceC2188p.mo715B(this);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: n */
    public final InterfaceC2105b mo529n() {
        return this.f510a;
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: o */
    public final long mo500o(Temporal temporal, InterfaceC2190r interfaceC2190r) {
        Objects.requireNonNull(temporal, "endExclusive");
        ChronoLocalDateTime chronoLocalDateTimeMo612M = m569f().mo612M(temporal);
        if (!(interfaceC2190r instanceof ChronoUnit)) {
            Objects.requireNonNull(interfaceC2190r, "unit");
            return interfaceC2190r.between(this, chronoLocalDateTimeMo612M);
        }
        ChronoUnit chronoUnit = (ChronoUnit) interfaceC2190r;
        ChronoUnit chronoUnit2 = ChronoUnit.DAYS;
        if (chronoUnit.compareTo(chronoUnit2) >= 0) {
            InterfaceC2105b interfaceC2105bMo529n = chronoLocalDateTimeMo612M.mo529n();
            if (chronoLocalDateTimeMo612M.mo528l().compareTo(this.f511b) < 0) {
                interfaceC2105bMo529n = interfaceC2105bMo529n.mo498c(1L, (InterfaceC2190r) chronoUnit2);
            }
            return this.f510a.mo500o(interfaceC2105bMo529n, interfaceC2190r);
        }
        EnumC2173a enumC2173a = EnumC2173a.EPOCH_DAY;
        long jMo486k = chronoLocalDateTimeMo612M.mo486k(enumC2173a) - this.f510a.mo486k(enumC2173a);
        switch (AbstractC2108e.f508a[chronoUnit.ordinal()]) {
            case 1:
                jMo486k = Math.multiplyExact(jMo486k, 86400000000000L);
                break;
            case 2:
                jMo486k = Math.multiplyExact(jMo486k, 86400000000L);
                break;
            case 3:
                jMo486k = Math.multiplyExact(jMo486k, DurationKt.MILLIS_IN_DAY);
                break;
            case 4:
                jMo486k = Math.multiplyExact(jMo486k, 86400L);
                break;
            case 5:
                jMo486k = Math.multiplyExact(jMo486k, 1440L);
                break;
            case 6:
                jMo486k = Math.multiplyExact(jMo486k, 24L);
                break;
            case 7:
                jMo486k = Math.multiplyExact(jMo486k, 2L);
                break;
        }
        return Math.addExact(jMo486k, this.f511b.mo500o(chronoLocalDateTimeMo612M.mo528l(), interfaceC2190r));
    }

    public final String toString() {
        return this.f510a.toString() + "T" + this.f511b.toString();
    }
}
