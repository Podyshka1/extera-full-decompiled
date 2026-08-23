package j$.time;

import j$.time.chrono.C2121r;
import j$.time.temporal.AbstractC2189q;
import j$.time.temporal.C2191s;
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
import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class OffsetDateTime implements Temporal, InterfaceC2185m, Comparable<OffsetDateTime>, Serializable {

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ int f478c = 0;
    private static final long serialVersionUID = 2287754244819255394L;

    /* JADX INFO: renamed from: a */
    public final LocalDateTime f479a;

    /* JADX INFO: renamed from: b */
    public final ZoneOffset f480b;

    static {
        LocalDateTime localDateTime = LocalDateTime.f474c;
        ZoneOffset zoneOffset = ZoneOffset.f492g;
        localDateTime.getClass();
        new OffsetDateTime(localDateTime, zoneOffset);
        LocalDateTime localDateTime2 = LocalDateTime.f475d;
        ZoneOffset zoneOffset2 = ZoneOffset.f491f;
        localDateTime2.getClass();
        new OffsetDateTime(localDateTime2, zoneOffset2);
    }

    public OffsetDateTime(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        Objects.requireNonNull(localDateTime, "dateTime");
        this.f479a = localDateTime;
        Objects.requireNonNull(zoneOffset, "offset");
        this.f480b = zoneOffset;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX INFO: renamed from: t */
    public static OffsetDateTime m531t(Instant instant, ZoneId zoneId) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(zoneId, "zone");
        ZoneOffset offset = zoneId.getRules().getOffset(instant);
        return new OffsetDateTime(LocalDateTime.m519P(instant.getEpochSecond(), instant.getNano(), offset), offset);
    }

    private Object writeReplace() {
        return new C2170r((byte) 10, this);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public final OffsetDateTime mo497b(long j, InterfaceC2190r interfaceC2190r) {
        return interfaceC2190r instanceof ChronoUnit ? m533G(this.f479a.mo497b(j, interfaceC2190r), this.f480b) : (OffsetDateTime) interfaceC2190r.mo714t(this, j);
    }

    /* JADX INFO: renamed from: G */
    public final OffsetDateTime m533G(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        return (this.f479a == localDateTime && this.f480b.equals(zoneOffset)) ? this : new OffsetDateTime(localDateTime, zoneOffset);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: a */
    public final Temporal mo496a(long j, InterfaceC2188p interfaceC2188p) {
        if (!(interfaceC2188p instanceof EnumC2173a)) {
            return (OffsetDateTime) interfaceC2188p.mo718V(this, j);
        }
        EnumC2173a enumC2173a = (EnumC2173a) interfaceC2188p;
        int i = AbstractC2167o.f666a[enumC2173a.ordinal()];
        LocalDateTime localDateTime = this.f479a;
        return i != 1 ? i != 2 ? m533G(localDateTime.mo496a(j, interfaceC2188p), this.f480b) : m533G(localDateTime, ZoneOffset.m549Z(enumC2173a.f681b.m728a(j, enumC2173a))) : m531t(Instant.ofEpochSecond(j, localDateTime.f477b.f658d), this.f480b);
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
    public final int compareTo(OffsetDateTime offsetDateTime) {
        int iCompare;
        OffsetDateTime offsetDateTime2 = offsetDateTime;
        if (this.f480b.equals(offsetDateTime2.f480b)) {
            iCompare = toLocalDateTime().compareTo(offsetDateTime2.toLocalDateTime());
        } else {
            iCompare = Long.compare(this.f479a.toEpochSecond(this.f480b), offsetDateTime2.f479a.toEpochSecond(offsetDateTime2.f480b));
            if (iCompare == 0) {
                iCompare = this.f479a.f477b.f658d - offsetDateTime2.f479a.f477b.f658d;
            }
        }
        return iCompare == 0 ? toLocalDateTime().compareTo(offsetDateTime2.toLocalDateTime()) : iCompare;
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: d */
    public final Object mo482d(C2196x c2196x) {
        if (c2196x == AbstractC2189q.f700d || c2196x == AbstractC2189q.f701e) {
            return this.f480b;
        }
        if (c2196x == AbstractC2189q.f697a) {
            return null;
        }
        return c2196x == AbstractC2189q.f702f ? this.f479a.f476a : c2196x == AbstractC2189q.f703g ? this.f479a.f477b : c2196x == AbstractC2189q.f698b ? C2121r.f543c : c2196x == AbstractC2189q.f699c ? ChronoUnit.NANOS : c2196x.m734m(this);
    }

    @Override // j$.time.temporal.InterfaceC2185m
    /* JADX INFO: renamed from: e */
    public final Temporal mo483e(Temporal temporal) {
        return temporal.mo496a(this.f479a.f476a.mo504J(), EnumC2173a.EPOCH_DAY).mo496a(this.f479a.f477b.d0(), EnumC2173a.NANO_OF_DAY).mo496a(this.f480b.getTotalSeconds(), EnumC2173a.OFFSET_SECONDS);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof OffsetDateTime) {
            OffsetDateTime offsetDateTime = (OffsetDateTime) obj;
            if (this.f479a.equals(offsetDateTime.f479a) && this.f480b.equals(offsetDateTime.f480b)) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: g */
    public final int mo484g(InterfaceC2188p interfaceC2188p) {
        if (!(interfaceC2188p instanceof EnumC2173a)) {
            return super.mo484g(interfaceC2188p);
        }
        int i = AbstractC2167o.f666a[((EnumC2173a) interfaceC2188p).ordinal()];
        if (i != 1) {
            return i != 2 ? this.f479a.mo484g(interfaceC2188p) : this.f480b.getTotalSeconds();
        }
        throw new C2191s("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: h */
    public final Temporal mo559j(LocalDate localDate) {
        return localDate == null ? (OffsetDateTime) localDate.mo483e(this) : m533G(this.f479a.mo515j(localDate), this.f480b);
    }

    public final int hashCode() {
        return this.f480b.f493b ^ this.f479a.hashCode();
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: i */
    public final boolean mo485i(InterfaceC2188p interfaceC2188p) {
        if (interfaceC2188p instanceof EnumC2173a) {
            return true;
        }
        return interfaceC2188p != null && interfaceC2188p.mo721t(this);
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: k */
    public final long mo486k(InterfaceC2188p interfaceC2188p) {
        if (!(interfaceC2188p instanceof EnumC2173a)) {
            return interfaceC2188p.mo717P(this);
        }
        int i = AbstractC2167o.f666a[((EnumC2173a) interfaceC2188p).ordinal()];
        return i != 1 ? i != 2 ? this.f479a.mo486k(interfaceC2188p) : this.f480b.getTotalSeconds() : this.f479a.toEpochSecond(this.f480b);
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: m */
    public final C2192t mo487m(InterfaceC2188p interfaceC2188p) {
        return interfaceC2188p instanceof EnumC2173a ? (interfaceC2188p == EnumC2173a.INSTANT_SECONDS || interfaceC2188p == EnumC2173a.OFFSET_SECONDS) ? ((EnumC2173a) interfaceC2188p).f681b : this.f479a.mo487m(interfaceC2188p) : interfaceC2188p.mo715B(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v11, types: [j$.time.OffsetDateTime] */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4 */
    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: o */
    public final long mo500o(Temporal temporal, InterfaceC2190r interfaceC2190r) {
        if (temporal instanceof OffsetDateTime) {
            temporal = (OffsetDateTime) temporal;
        } else {
            try {
                ZoneOffset zoneOffsetM546V = ZoneOffset.m546V(temporal);
                LocalDate localDate = (LocalDate) temporal.mo482d(AbstractC2189q.f702f);
                C2162j c2162j = (C2162j) temporal.mo482d(AbstractC2189q.f703g);
                temporal = (localDate == null || c2162j == null) ? m531t(Instant.m491B(temporal), zoneOffsetM546V) : new OffsetDateTime(LocalDateTime.m518I(localDate, c2162j), zoneOffsetM546V);
            } catch (C2103c e) {
                C2159g.m690g("Unable to obtain OffsetDateTime from TemporalAccessor: ", temporal, temporal.getClass().getName(), e);
                return 0L;
            }
        }
        if (!(interfaceC2190r instanceof ChronoUnit)) {
            return interfaceC2190r.between(this, temporal);
        }
        ZoneOffset zoneOffset = this.f480b;
        boolean zEquals = zoneOffset.equals(temporal.f480b);
        OffsetDateTime offsetDateTime = temporal;
        if (!zEquals) {
            offsetDateTime = new OffsetDateTime(temporal.f479a.m524X(zoneOffset.getTotalSeconds() - temporal.f480b.getTotalSeconds()), zoneOffset);
        }
        return this.f479a.mo500o(offsetDateTime.f479a, interfaceC2190r);
    }

    public LocalDateTime toLocalDateTime() {
        return this.f479a;
    }

    public final String toString() {
        return this.f479a.toString() + this.f480b.f494c;
    }
}
