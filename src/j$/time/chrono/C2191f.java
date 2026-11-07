package j$.time.chrono;

import j$.nio.file.C2148b;
import j$.time.LocalTime;
import j$.time.ZoneId;
import j$.time.temporal.C2272s;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2266m;
import j$.time.temporal.InterfaceC2269p;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Objects;
import kotlin.time.DurationKt;

/* JADX INFO: renamed from: j$.time.chrono.f */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2191f implements ChronoLocalDateTime, Temporal, InterfaceC2266m, Serializable {
    private static final long serialVersionUID = 4556003607393004514L;

    /* JADX INFO: renamed from: a */
    public final transient InterfaceC2187b f666a;

    /* JADX INFO: renamed from: b */
    public final transient LocalTime f667b;

    public C2191f(InterfaceC2187b interfaceC2187b, LocalTime localTime) {
        Objects.requireNonNull(localTime, "time");
        this.f666a = interfaceC2187b;
        this.f667b = localTime;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX INFO: renamed from: s */
    public static C2191f m737s(InterfaceC2196k interfaceC2196k, Temporal temporal) {
        C2191f c2191f = (C2191f) temporal;
        if (interfaceC2196k.equals(c2191f.m720f())) {
            return c2191f;
        }
        C2148b.m618k("Chronology mismatch, required: ", interfaceC2196k.getId(), c2191f.m720f().getId());
        return null;
    }

    private Object writeReplace() {
        return new d0((byte) 2, this);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public final C2191f mo653b(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return m737s(this.f666a.mo667f(), temporalUnit.mo828s(this, j));
        }
        switch (AbstractC2190e.f664a[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return m739I(this.f666a, 0L, 0L, 0L, j);
            case 2:
                C2191f c2191fM741S = m741S(this.f666a.mo653b(j / 86400000000L, (TemporalUnit) ChronoUnit.DAYS), this.f667b);
                return c2191fM741S.m739I(c2191fM741S.f666a, 0L, 0L, 0L, (j % 86400000000L) * 1000);
            case 3:
                C2191f c2191fM741S2 = m741S(this.f666a.mo653b(j / DurationKt.MILLIS_IN_DAY, (TemporalUnit) ChronoUnit.DAYS), this.f667b);
                return c2191fM741S2.m739I(c2191fM741S2.f666a, 0L, 0L, 0L, (j % DurationKt.MILLIS_IN_DAY) * 1000000);
            case 4:
                return m739I(this.f666a, 0L, 0L, j, 0L);
            case 5:
                return m739I(this.f666a, 0L, j, 0L, 0L);
            case 6:
                return m739I(this.f666a, j, 0L, 0L, 0L);
            case 7:
                C2191f c2191fM741S3 = m741S(this.f666a.mo653b(j / 256, (TemporalUnit) ChronoUnit.DAYS), this.f667b);
                return c2191fM741S3.m739I(c2191fM741S3.f666a, (j % 256) * 12, 0L, 0L, 0L);
            default:
                return m741S(this.f666a.mo653b(j, temporalUnit), this.f667b);
        }
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: H */
    public final ChronoZonedDateTime mo672H(ZoneId zoneId) {
        return C2195j.m755D(zoneId, null, this);
    }

    /* JADX INFO: renamed from: I */
    public final C2191f m739I(InterfaceC2187b interfaceC2187b, long j, long j2, long j3, long j4) {
        long j5 = j | j2 | j3 | j4;
        LocalTime localTime = this.f667b;
        if (j5 == 0) {
            return m741S(interfaceC2187b, localTime);
        }
        long j6 = j / 24;
        long jF0 = localTime.f0();
        long j7 = ((j % 24) * 3600000000000L) + ((j2 % 1440) * 60000000000L) + ((j3 % 86400) * 1000000000) + (j4 % 86400000000000L) + jF0;
        long jFloorDiv = Math.floorDiv(j7, 86400000000000L) + j6 + (j2 / 1440) + (j3 / 86400) + (j4 / 86400000000000L);
        long jFloorMod = Math.floorMod(j7, 86400000000000L);
        return m741S(interfaceC2187b.mo653b(jFloorDiv, (TemporalUnit) ChronoUnit.DAYS), jFloorMod == jF0 ? this.f667b : LocalTime.m682S(jFloorMod));
    }

    @Override // j$.time.chrono.ChronoLocalDateTime, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
    public final C2191f mo652a(long j, InterfaceC2269p interfaceC2269p) {
        if (!(interfaceC2269p instanceof EnumC2254a)) {
            return m737s(this.f666a.mo667f(), interfaceC2269p.mo832Y(this, j));
        }
        boolean zB0 = ((EnumC2254a) interfaceC2269p).b0();
        InterfaceC2187b interfaceC2187b = this.f666a;
        return zB0 ? m741S(interfaceC2187b, this.f667b.mo652a(j, interfaceC2269p)) : m741S(interfaceC2187b.mo652a(j, interfaceC2269p), this.f667b);
    }

    /* JADX INFO: renamed from: S */
    public final C2191f m741S(Temporal temporal, LocalTime localTime) {
        InterfaceC2187b interfaceC2187b = this.f666a;
        return (interfaceC2187b == temporal && this.f667b == localTime) ? this : new C2191f(AbstractC2189d.m735s(interfaceC2187b.mo667f(), temporal), localTime);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: Y, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final C2191f mo677j(InterfaceC2266m interfaceC2266m) {
        if (interfaceC2266m instanceof InterfaceC2187b) {
            return m741S((InterfaceC2187b) interfaceC2266m, this.f667b);
        }
        boolean z = interfaceC2266m instanceof LocalTime;
        InterfaceC2187b interfaceC2187b = this.f666a;
        return z ? m741S(interfaceC2187b, (LocalTime) interfaceC2266m) : interfaceC2266m instanceof C2191f ? m737s(interfaceC2187b.mo667f(), (C2191f) interfaceC2266m) : m737s(interfaceC2187b.mo667f(), (C2191f) interfaceC2266m.mo641e(this));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ChronoLocalDateTime) && compareTo((ChronoLocalDateTime) obj) == 0;
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: g */
    public final int mo642g(InterfaceC2269p interfaceC2269p) {
        return interfaceC2269p instanceof EnumC2254a ? ((EnumC2254a) interfaceC2269p).b0() ? this.f667b.mo642g(interfaceC2269p) : this.f666a.mo642g(interfaceC2269p) : mo643l(interfaceC2269p).m837a(mo532k(interfaceC2269p), interfaceC2269p);
    }

    public final int hashCode() {
        return this.f667b.hashCode() ^ this.f666a.hashCode();
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: i */
    public final boolean mo531i(InterfaceC2269p interfaceC2269p) {
        if (!(interfaceC2269p instanceof EnumC2254a)) {
            return interfaceC2269p != null && interfaceC2269p.mo833s(this);
        }
        EnumC2254a enumC2254a = (EnumC2254a) interfaceC2269p;
        return enumC2254a.isDateBased() || enumC2254a.b0();
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: k */
    public final long mo532k(InterfaceC2269p interfaceC2269p) {
        return interfaceC2269p instanceof EnumC2254a ? ((EnumC2254a) interfaceC2269p).b0() ? this.f667b.mo532k(interfaceC2269p) : this.f666a.mo532k(interfaceC2269p) : interfaceC2269p.mo831S(this);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: l */
    public final C2272s mo643l(InterfaceC2269p interfaceC2269p) {
        if (interfaceC2269p instanceof EnumC2254a) {
            return (((EnumC2254a) interfaceC2269p).b0() ? this.f667b : this.f666a).mo643l(interfaceC2269p);
        }
        return interfaceC2269p.mo829D(this);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: m */
    public final InterfaceC2187b mo678m() {
        return this.f666a;
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: n */
    public final long mo656n(Temporal temporal, TemporalUnit temporalUnit) {
        Objects.requireNonNull(temporal, "endExclusive");
        ChronoLocalDateTime chronoLocalDateTimeMo759O = m720f().mo759O(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            Objects.requireNonNull(temporalUnit, "unit");
            return temporalUnit.between(this, chronoLocalDateTimeMo759O);
        }
        ChronoUnit chronoUnit = (ChronoUnit) temporalUnit;
        ChronoUnit chronoUnit2 = ChronoUnit.DAYS;
        if (chronoUnit.compareTo(chronoUnit2) >= 0) {
            InterfaceC2187b interfaceC2187bMo678m = chronoLocalDateTimeMo759O.mo678m();
            if (chronoLocalDateTimeMo759O.toLocalTime().compareTo(this.f667b) < 0) {
                interfaceC2187bMo678m = interfaceC2187bMo678m.mo654c(1L, (TemporalUnit) chronoUnit2);
            }
            return this.f666a.mo656n(interfaceC2187bMo678m, temporalUnit);
        }
        EnumC2254a enumC2254a = EnumC2254a.EPOCH_DAY;
        long jMo532k = chronoLocalDateTimeMo759O.mo532k(enumC2254a) - this.f666a.mo532k(enumC2254a);
        switch (AbstractC2190e.f664a[chronoUnit.ordinal()]) {
            case 1:
                jMo532k = Math.multiplyExact(jMo532k, 86400000000000L);
                break;
            case 2:
                jMo532k = Math.multiplyExact(jMo532k, 86400000000L);
                break;
            case 3:
                jMo532k = Math.multiplyExact(jMo532k, DurationKt.MILLIS_IN_DAY);
                break;
            case 4:
                jMo532k = Math.multiplyExact(jMo532k, 86400L);
                break;
            case 5:
                jMo532k = Math.multiplyExact(jMo532k, 1440L);
                break;
            case 6:
                jMo532k = Math.multiplyExact(jMo532k, 24L);
                break;
            case 7:
                jMo532k = Math.multiplyExact(jMo532k, 2L);
                break;
        }
        return Math.addExact(jMo532k, this.f667b.mo656n(chronoLocalDateTimeMo759O.toLocalTime(), temporalUnit));
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public final LocalTime toLocalTime() {
        return this.f667b;
    }

    public final String toString() {
        return this.f666a.toString() + "T" + this.f667b.toString();
    }
}
