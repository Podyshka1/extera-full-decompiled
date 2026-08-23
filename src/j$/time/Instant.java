package j$.time;

import j$.time.format.DateTimeFormatter;
import j$.time.temporal.AbstractC2189q;
import j$.time.temporal.C2191s;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2184l;
import j$.time.temporal.InterfaceC2185m;
import j$.time.temporal.InterfaceC2188p;
import j$.time.temporal.InterfaceC2190r;
import j$.time.temporal.Temporal;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Objects;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.time.DurationKt;

/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class Instant implements Temporal, InterfaceC2185m, Comparable<Instant>, Serializable {

    /* JADX INFO: renamed from: c */
    public static final Instant f466c = new Instant(0, 0);
    private static final long serialVersionUID = -665713676816604388L;

    /* JADX INFO: renamed from: a */
    public final long f467a;

    /* JADX INFO: renamed from: b */
    public final int f468b;

    static {
        ofEpochSecond(-31557014167219200L, 0L);
        ofEpochSecond(31556889864403199L, 999999999L);
    }

    public Instant(long j, int i) {
        this.f467a = j;
        this.f468b = i;
    }

    /* JADX INFO: renamed from: B */
    public static Instant m491B(InterfaceC2184l interfaceC2184l) {
        if (interfaceC2184l instanceof Instant) {
            return (Instant) interfaceC2184l;
        }
        Objects.requireNonNull(interfaceC2184l, "temporal");
        try {
            return ofEpochSecond(interfaceC2184l.mo486k(EnumC2173a.INSTANT_SECONDS), interfaceC2184l.mo484g(EnumC2173a.NANO_OF_SECOND));
        } catch (C2103c e) {
            C2159g.m690g("Unable to obtain Instant from TemporalAccessor: ", interfaceC2184l, interfaceC2184l.getClass().getName(), e);
            return null;
        }
    }

    public static Instant now() {
        C2101a.f498b.getClass();
        return ofEpochMilli(System.currentTimeMillis());
    }

    public static Instant ofEpochMilli(long j) {
        return m492t(Math.floorDiv(j, 1000L), ((int) Math.floorMod(j, 1000L)) * DurationKt.NANOS_IN_MILLIS);
    }

    public static Instant ofEpochSecond(long j, long j2) {
        return m492t(Math.addExact(j, Math.floorDiv(j2, 1000000000L)), (int) Math.floorMod(j2, 1000000000L));
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX INFO: renamed from: t */
    public static Instant m492t(long j, int i) {
        if ((((long) i) | j) == 0) {
            return f466c;
        }
        if (j >= -31557014167219200L && j <= 31556889864403199L) {
            return new Instant(j, i);
        }
        C2159g.m684a("Instant exceeds minimum or maximum instant");
        return null;
    }

    private Object writeReplace() {
        return new C2170r((byte) 2, this);
    }

    /* JADX INFO: renamed from: G */
    public final Instant m493G(long j, long j2) {
        if ((j | j2) == 0) {
            return this;
        }
        return ofEpochSecond(Math.addExact(Math.addExact(this.f467a, j), j2 / 1000000000), ((long) this.f468b) + (j2 % 1000000000));
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public final Instant mo497b(long j, InterfaceC2190r interfaceC2190r) {
        if (!(interfaceC2190r instanceof ChronoUnit)) {
            return (Instant) interfaceC2190r.mo714t(this, j);
        }
        switch (AbstractC2131e.f560b[((ChronoUnit) interfaceC2190r).ordinal()]) {
            case 1:
                return m493G(0L, j);
            case 2:
                return m493G(j / 1000000, (j % 1000000) * 1000);
            case 3:
                return m493G(j / 1000, (j % 1000) * 1000000);
            case 4:
                return plusSeconds(j);
            case 5:
                return plusSeconds(Math.multiplyExact(j, 60L));
            case 6:
                return plusSeconds(Math.multiplyExact(j, 3600L));
            case 7:
                return plusSeconds(Math.multiplyExact(j, 43200L));
            case 8:
                return plusSeconds(Math.multiplyExact(j, 86400L));
            default:
                C2159g.m687d("Unsupported unit: ", interfaceC2190r);
                return null;
        }
    }

    /* JADX INFO: renamed from: P */
    public final long m495P(Instant instant) {
        long jSubtractExact = Math.subtractExact(instant.f467a, this.f467a);
        long j = instant.f468b - this.f468b;
        return (jSubtractExact <= 0 || j >= 0) ? (jSubtractExact >= 0 || j <= 0) ? jSubtractExact : jSubtractExact + 1 : jSubtractExact - 1;
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: a */
    public final Temporal mo496a(long j, InterfaceC2188p interfaceC2188p) {
        if (!(interfaceC2188p instanceof EnumC2173a)) {
            return (Instant) interfaceC2188p.mo718V(this, j);
        }
        EnumC2173a enumC2173a = (EnumC2173a) interfaceC2188p;
        enumC2173a.m719X(j);
        int i = AbstractC2131e.f559a[enumC2173a.ordinal()];
        if (i == 1) {
            return j != ((long) this.f468b) ? m492t(this.f467a, (int) j) : this;
        }
        if (i == 2) {
            int i2 = ((int) j) * 1000;
            return i2 != this.f468b ? m492t(this.f467a, i2) : this;
        }
        if (i == 3) {
            int i3 = ((int) j) * DurationKt.NANOS_IN_MILLIS;
            return i3 != this.f468b ? m492t(this.f467a, i3) : this;
        }
        if (i == 4) {
            return j != this.f467a ? m492t(j, this.f468b) : this;
        }
        throw new C2191s(AbstractC2130d.m629a("Unsupported field: ", interfaceC2188p));
    }

    public OffsetDateTime atOffset(ZoneOffset zoneOffset) {
        return OffsetDateTime.m531t(this, zoneOffset);
    }

    public ZonedDateTime atZone(ZoneId zoneId) {
        Objects.requireNonNull(zoneId, "zone");
        return ZonedDateTime.m552t(getEpochSecond(), getNano(), zoneId);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final Temporal mo498c(long j, InterfaceC2190r interfaceC2190r) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = mo497b(LongCompanionObject.MAX_VALUE, interfaceC2190r);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.mo497b(j2, interfaceC2190r);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Instant instant) {
        Instant instant2 = instant;
        int iCompare = Long.compare(this.f467a, instant2.f467a);
        return iCompare != 0 ? iCompare : this.f468b - instant2.f468b;
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: d */
    public final Object mo482d(C2196x c2196x) {
        if (c2196x == AbstractC2189q.f699c) {
            return ChronoUnit.NANOS;
        }
        if (c2196x == AbstractC2189q.f698b || c2196x == AbstractC2189q.f697a || c2196x == AbstractC2189q.f701e || c2196x == AbstractC2189q.f700d || c2196x == AbstractC2189q.f702f || c2196x == AbstractC2189q.f703g) {
            return null;
        }
        return c2196x.m734m(this);
    }

    @Override // j$.time.temporal.InterfaceC2185m
    /* JADX INFO: renamed from: e */
    public final Temporal mo483e(Temporal temporal) {
        return temporal.mo496a(this.f467a, EnumC2173a.INSTANT_SECONDS).mo496a(this.f468b, EnumC2173a.NANO_OF_SECOND);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Instant) {
            Instant instant = (Instant) obj;
            if (this.f467a == instant.f467a && this.f468b == instant.f468b) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: g */
    public final int mo484g(InterfaceC2188p interfaceC2188p) {
        if (!(interfaceC2188p instanceof EnumC2173a)) {
            return super.mo487m(interfaceC2188p).m728a(interfaceC2188p.mo717P(this), interfaceC2188p);
        }
        int i = AbstractC2131e.f559a[((EnumC2173a) interfaceC2188p).ordinal()];
        if (i == 1) {
            return this.f468b;
        }
        if (i == 2) {
            return this.f468b / 1000;
        }
        if (i == 3) {
            return this.f468b / DurationKt.NANOS_IN_MILLIS;
        }
        if (i == 4) {
            EnumC2173a enumC2173a = EnumC2173a.INSTANT_SECONDS;
            enumC2173a.f681b.m728a(this.f467a, enumC2173a);
        }
        throw new C2191s(AbstractC2130d.m629a("Unsupported field: ", interfaceC2188p));
    }

    public long getEpochSecond() {
        return this.f467a;
    }

    public int getNano() {
        return this.f468b;
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: h */
    public final Temporal mo559j(LocalDate localDate) {
        return (Instant) localDate.mo483e(this);
    }

    public final int hashCode() {
        long j = this.f467a;
        return (this.f468b * 51) + ((int) (j ^ (j >>> 32)));
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: i */
    public final boolean mo485i(InterfaceC2188p interfaceC2188p) {
        return interfaceC2188p instanceof EnumC2173a ? interfaceC2188p == EnumC2173a.INSTANT_SECONDS || interfaceC2188p == EnumC2173a.NANO_OF_SECOND || interfaceC2188p == EnumC2173a.MICRO_OF_SECOND || interfaceC2188p == EnumC2173a.MILLI_OF_SECOND : interfaceC2188p != null && interfaceC2188p.mo721t(this);
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: k */
    public final long mo486k(InterfaceC2188p interfaceC2188p) {
        int i;
        if (!(interfaceC2188p instanceof EnumC2173a)) {
            return interfaceC2188p.mo717P(this);
        }
        int i2 = AbstractC2131e.f559a[((EnumC2173a) interfaceC2188p).ordinal()];
        if (i2 == 1) {
            i = this.f468b;
        } else if (i2 == 2) {
            i = this.f468b / 1000;
        } else {
            if (i2 != 3) {
                if (i2 == 4) {
                    return this.f467a;
                }
                throw new C2191s(AbstractC2130d.m629a("Unsupported field: ", interfaceC2188p));
            }
            i = this.f468b / DurationKt.NANOS_IN_MILLIS;
        }
        return i;
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: o */
    public final long mo500o(Temporal temporal, InterfaceC2190r interfaceC2190r) {
        Instant instantM491B = m491B(temporal);
        if (!(interfaceC2190r instanceof ChronoUnit)) {
            return interfaceC2190r.between(this, instantM491B);
        }
        switch (AbstractC2131e.f560b[((ChronoUnit) interfaceC2190r).ordinal()]) {
            case 1:
                return Math.addExact(Math.multiplyExact(Math.subtractExact(instantM491B.f467a, this.f467a), 1000000000L), instantM491B.f468b - this.f468b);
            case 2:
                return Math.addExact(Math.multiplyExact(Math.subtractExact(instantM491B.f467a, this.f467a), 1000000000L), instantM491B.f468b - this.f468b) / 1000;
            case 3:
                return Math.subtractExact(instantM491B.toEpochMilli(), toEpochMilli());
            case 4:
                return m495P(instantM491B);
            case 5:
                return m495P(instantM491B) / 60;
            case 6:
                return m495P(instantM491B) / 3600;
            case 7:
                return m495P(instantM491B) / 43200;
            case 8:
                return m495P(instantM491B) / 86400;
            default:
                C2159g.m687d("Unsupported unit: ", interfaceC2190r);
                return 0L;
        }
    }

    public Instant plusSeconds(long j) {
        return m493G(j, 0L);
    }

    public long toEpochMilli() {
        long j = this.f467a;
        return (j >= 0 || this.f468b <= 0) ? Math.addExact(Math.multiplyExact(j, 1000L), this.f468b / DurationKt.NANOS_IN_MILLIS) : Math.addExact(Math.multiplyExact(j + 1, 1000L), (this.f468b / DurationKt.NANOS_IN_MILLIS) - 1000);
    }

    public String toString() {
        return DateTimeFormatter.f563f.m630a(this);
    }
}
