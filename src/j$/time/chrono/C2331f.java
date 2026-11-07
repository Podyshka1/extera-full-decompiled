package j$.time.chrono;

import j$.nio.file.C2288b;
import j$.time.LocalTime;
import j$.time.ZoneId;
import j$.time.temporal.C2411s;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2405m;
import j$.time.temporal.InterfaceC2408p;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Objects;
import kotlin.time.DurationKt;

/* JADX INFO: renamed from: j$.time.chrono.f */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2331f implements ChronoLocalDateTime, Temporal, InterfaceC2405m, Serializable {
    private static final long serialVersionUID = 4556003607393004514L;

    /* JADX INFO: renamed from: a */
    public final transient InterfaceC2327b f668a;

    /* JADX INFO: renamed from: b */
    public final transient LocalTime f669b;

    public C2331f(InterfaceC2327b interfaceC2327b, LocalTime localTime) {
        Objects.requireNonNull(localTime, "time");
        this.f668a = interfaceC2327b;
        this.f669b = localTime;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX INFO: renamed from: s */
    public static C2331f m772s(InterfaceC2336k interfaceC2336k, Temporal temporal) {
        C2331f c2331f = (C2331f) temporal;
        if (interfaceC2336k.equals(c2331f.m754f())) {
            return c2331f;
        }
        C2288b.m642k("Chronology mismatch, required: ", interfaceC2336k.getId(), c2331f.m754f().getId());
        return null;
    }

    private Object writeReplace() {
        return new d0((byte) 2, this);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public final C2331f mo677b(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return m772s(this.f668a.mo692f(), temporalUnit.mo872s(this, j));
        }
        switch (AbstractC2330e.f666a[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return m774I(this.f668a, 0L, 0L, 0L, j);
            case 2:
                C2331f c2331fM776R = m776R(this.f668a.mo677b(j / 86400000000L, (TemporalUnit) ChronoUnit.DAYS), this.f669b);
                return c2331fM776R.m774I(c2331fM776R.f668a, 0L, 0L, 0L, (j % 86400000000L) * 1000);
            case 3:
                C2331f c2331fM776R2 = m776R(this.f668a.mo677b(j / DurationKt.MILLIS_IN_DAY, (TemporalUnit) ChronoUnit.DAYS), this.f669b);
                return c2331fM776R2.m774I(c2331fM776R2.f668a, 0L, 0L, 0L, (j % DurationKt.MILLIS_IN_DAY) * 1000000);
            case 4:
                return m774I(this.f668a, 0L, 0L, j, 0L);
            case 5:
                return m774I(this.f668a, 0L, j, 0L, 0L);
            case 6:
                return m774I(this.f668a, j, 0L, 0L, 0L);
            case 7:
                C2331f c2331fM776R3 = m776R(this.f668a.mo677b(j / 256, (TemporalUnit) ChronoUnit.DAYS), this.f669b);
                return c2331fM776R3.m774I(c2331fM776R3.f668a, (j % 256) * 12, 0L, 0L, 0L);
            default:
                return m776R(this.f668a.mo677b(j, temporalUnit), this.f669b);
        }
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: H */
    public final ChronoZonedDateTime mo697H(ZoneId zoneId) {
        return C2335j.m792D(zoneId, null, this);
    }

    /* JADX INFO: renamed from: I */
    public final C2331f m774I(InterfaceC2327b interfaceC2327b, long j, long j2, long j3, long j4) {
        long j5 = j | j2 | j3 | j4;
        LocalTime localTime = this.f669b;
        if (j5 == 0) {
            return m776R(interfaceC2327b, localTime);
        }
        long j6 = j / 24;
        long jD0 = localTime.d0();
        long j7 = ((j % 24) * 3600000000000L) + ((j2 % 1440) * 60000000000L) + ((j3 % 86400) * 1000000000) + (j4 % 86400000000000L) + jD0;
        long jFloorDiv = Math.floorDiv(j7, 86400000000000L) + j6 + (j2 / 1440) + (j3 / 86400) + (j4 / 86400000000000L);
        long jFloorMod = Math.floorMod(j7, 86400000000000L);
        return m776R(interfaceC2327b.mo677b(jFloorDiv, (TemporalUnit) ChronoUnit.DAYS), jFloorMod == jD0 ? this.f669b : LocalTime.m709R(jFloorMod));
    }

    @Override // j$.time.chrono.ChronoLocalDateTime, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
    public final C2331f mo676a(long j, InterfaceC2408p interfaceC2408p) {
        if (!(interfaceC2408p instanceof EnumC2393a)) {
            return m772s(this.f668a.mo692f(), interfaceC2408p.mo876X(this, j));
        }
        boolean zM878Z = ((EnumC2393a) interfaceC2408p).m878Z();
        InterfaceC2327b interfaceC2327b = this.f668a;
        return zM878Z ? m776R(interfaceC2327b, this.f669b.mo676a(j, interfaceC2408p)) : m776R(interfaceC2327b.mo676a(j, interfaceC2408p), this.f669b);
    }

    /* JADX INFO: renamed from: R */
    public final C2331f m776R(Temporal temporal, LocalTime localTime) {
        InterfaceC2327b interfaceC2327b = this.f668a;
        return (interfaceC2327b == temporal && this.f669b == localTime) ? this : new C2331f(AbstractC2329d.m770s(interfaceC2327b.mo692f(), temporal), localTime);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: X, reason: merged with bridge method [inline-methods] */
    public final C2331f mo750j(InterfaceC2405m interfaceC2405m) {
        if (interfaceC2405m instanceof InterfaceC2327b) {
            return m776R((InterfaceC2327b) interfaceC2405m, this.f669b);
        }
        boolean z = interfaceC2405m instanceof LocalTime;
        InterfaceC2327b interfaceC2327b = this.f668a;
        return z ? m776R(interfaceC2327b, (LocalTime) interfaceC2405m) : interfaceC2405m instanceof C2331f ? m772s(interfaceC2327b.mo692f(), (C2331f) interfaceC2405m) : m772s(interfaceC2327b.mo692f(), (C2331f) interfaceC2405m.mo665e(this));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ChronoLocalDateTime) && compareTo((ChronoLocalDateTime) obj) == 0;
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: g */
    public final int mo666g(InterfaceC2408p interfaceC2408p) {
        return interfaceC2408p instanceof EnumC2393a ? ((EnumC2393a) interfaceC2408p).m878Z() ? this.f669b.mo666g(interfaceC2408p) : this.f668a.mo666g(interfaceC2408p) : mo667l(interfaceC2408p).m885a(mo556k(interfaceC2408p), interfaceC2408p);
    }

    public final int hashCode() {
        return this.f669b.hashCode() ^ this.f668a.hashCode();
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: i */
    public final boolean mo555i(InterfaceC2408p interfaceC2408p) {
        if (!(interfaceC2408p instanceof EnumC2393a)) {
            return interfaceC2408p != null && interfaceC2408p.mo879s(this);
        }
        EnumC2393a enumC2393a = (EnumC2393a) interfaceC2408p;
        return enumC2393a.isDateBased() || enumC2393a.m878Z();
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: k */
    public final long mo556k(InterfaceC2408p interfaceC2408p) {
        return interfaceC2408p instanceof EnumC2393a ? ((EnumC2393a) interfaceC2408p).m878Z() ? this.f669b.mo556k(interfaceC2408p) : this.f668a.mo556k(interfaceC2408p) : interfaceC2408p.mo875R(this);
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: l */
    public final C2411s mo667l(InterfaceC2408p interfaceC2408p) {
        if (interfaceC2408p instanceof EnumC2393a) {
            return (((EnumC2393a) interfaceC2408p).m878Z() ? this.f669b : this.f668a).mo667l(interfaceC2408p);
        }
        return interfaceC2408p.mo873D(this);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: m */
    public final InterfaceC2327b mo705m() {
        return this.f668a;
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: n */
    public final long mo680n(Temporal temporal, TemporalUnit temporalUnit) {
        Objects.requireNonNull(temporal, "endExclusive");
        ChronoLocalDateTime chronoLocalDateTimeMo796N = m754f().mo796N(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            Objects.requireNonNull(temporalUnit, "unit");
            return temporalUnit.between(this, chronoLocalDateTimeMo796N);
        }
        ChronoUnit chronoUnit = (ChronoUnit) temporalUnit;
        ChronoUnit chronoUnit2 = ChronoUnit.DAYS;
        if (chronoUnit.compareTo(chronoUnit2) >= 0) {
            InterfaceC2327b interfaceC2327bMo705m = chronoLocalDateTimeMo796N.mo705m();
            if (chronoLocalDateTimeMo796N.toLocalTime().compareTo(this.f669b) < 0) {
                interfaceC2327bMo705m = interfaceC2327bMo705m.mo678c(1L, (TemporalUnit) chronoUnit2);
            }
            return this.f668a.mo680n(interfaceC2327bMo705m, temporalUnit);
        }
        EnumC2393a enumC2393a = EnumC2393a.EPOCH_DAY;
        long jMo556k = chronoLocalDateTimeMo796N.mo556k(enumC2393a) - this.f668a.mo556k(enumC2393a);
        switch (AbstractC2330e.f666a[chronoUnit.ordinal()]) {
            case 1:
                jMo556k = Math.multiplyExact(jMo556k, 86400000000000L);
                break;
            case 2:
                jMo556k = Math.multiplyExact(jMo556k, 86400000000L);
                break;
            case 3:
                jMo556k = Math.multiplyExact(jMo556k, DurationKt.MILLIS_IN_DAY);
                break;
            case 4:
                jMo556k = Math.multiplyExact(jMo556k, 86400L);
                break;
            case 5:
                jMo556k = Math.multiplyExact(jMo556k, 1440L);
                break;
            case 6:
                jMo556k = Math.multiplyExact(jMo556k, 24L);
                break;
            case 7:
                jMo556k = Math.multiplyExact(jMo556k, 2L);
                break;
        }
        return Math.addExact(jMo556k, this.f669b.mo680n(chronoLocalDateTimeMo796N.toLocalTime(), temporalUnit));
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public final LocalTime toLocalTime() {
        return this.f669b;
    }

    public final String toString() {
        return this.f668a.toString() + "T" + this.f669b.toString();
    }
}
