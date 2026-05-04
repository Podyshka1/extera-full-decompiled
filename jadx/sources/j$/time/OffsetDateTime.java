package j$.time;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.chrono.C1997r;
import j$.time.format.C2009a;
import j$.time.temporal.AbstractC2064r;
import j$.time.temporal.C2066t;
import j$.time.temporal.C2067u;
import j$.time.temporal.EnumC2047a;
import j$.time.temporal.EnumC2048b;
import j$.time.temporal.InterfaceC2059m;
import j$.time.temporal.InterfaceC2061o;
import j$.time.temporal.InterfaceC2063q;
import j$.time.temporal.InterfaceC2065s;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public final class OffsetDateTime implements InterfaceC2059m, InterfaceC2061o, Comparable<OffsetDateTime>, Serializable {

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ int f415c = 0;
    private static final long serialVersionUID = 2287754244819255394L;

    /* JADX INFO: renamed from: a */
    public final LocalDateTime f416a;

    /* JADX INFO: renamed from: b */
    public final ZoneOffset f417b;

    @Override // java.lang.Comparable
    public final int compareTo(OffsetDateTime offsetDateTime) {
        int iCompare;
        OffsetDateTime offsetDateTime2 = offsetDateTime;
        if (this.f417b.equals(offsetDateTime2.f417b)) {
            iCompare = toLocalDateTime().compareTo(offsetDateTime2.toLocalDateTime());
        } else {
            LocalDateTime localDateTime = this.f416a;
            ZoneOffset zoneOffset = this.f417b;
            localDateTime.getClass();
            long jM441x = AbstractC1965a.m441x(localDateTime, zoneOffset);
            LocalDateTime localDateTime2 = offsetDateTime2.f416a;
            ZoneOffset zoneOffset2 = offsetDateTime2.f417b;
            localDateTime2.getClass();
            iCompare = Long.compare(jM441x, AbstractC1965a.m441x(localDateTime2, zoneOffset2));
            if (iCompare == 0) {
                iCompare = this.f416a.f414b.f565d - offsetDateTime2.f416a.f414b.f565d;
            }
        }
        return iCompare == 0 ? toLocalDateTime().compareTo(offsetDateTime2.toLocalDateTime()) : iCompare;
    }

    static {
        LocalDateTime localDateTime = LocalDateTime.f411c;
        ZoneOffset zoneOffset = ZoneOffset.f429g;
        localDateTime.getClass();
        new OffsetDateTime(localDateTime, zoneOffset);
        LocalDateTime localDateTime2 = LocalDateTime.f412d;
        ZoneOffset zoneOffset2 = ZoneOffset.f428f;
        localDateTime2.getClass();
        new OffsetDateTime(localDateTime2, zoneOffset2);
    }

    /* JADX INFO: renamed from: v */
    public static OffsetDateTime m509v(Instant instant, ZoneId zoneId) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(zoneId, "zone");
        ZoneOffset offset = zoneId.getRules().getOffset(instant);
        return new OffsetDateTime(LocalDateTime.m495F(instant.f404a, instant.f405b, offset), offset);
    }

    public OffsetDateTime(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        this.f416a = (LocalDateTime) Objects.requireNonNull(localDateTime, "dateTime");
        this.f417b = (ZoneOffset) Objects.requireNonNull(zoneOffset, "offset");
    }

    /* JADX INFO: renamed from: D */
    public final OffsetDateTime m511D(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        return (this.f416a == localDateTime && this.f417b.equals(zoneOffset)) ? this : new OffsetDateTime(localDateTime, zoneOffset);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: e */
    public final boolean mo455e(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q instanceof EnumC2047a) {
            return true;
        }
        return interfaceC2063q != null && interfaceC2063q.mo644h(this);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: j */
    public final C2067u mo457j(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q instanceof EnumC2047a) {
            if (interfaceC2063q != EnumC2047a.INSTANT_SECONDS && interfaceC2063q != EnumC2047a.OFFSET_SECONDS) {
                return this.f416a.mo457j(interfaceC2063q);
            }
            return ((EnumC2047a) interfaceC2063q).f592b;
        }
        return interfaceC2063q.mo645i(this);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: h */
    public final int mo456h(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q instanceof EnumC2047a) {
            int i = AbstractC2039m.f573a[((EnumC2047a) interfaceC2063q).ordinal()];
            if (i == 1) {
                throw new C2066t("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
            }
            if (i == 2) {
                return this.f417b.getTotalSeconds();
            }
            return this.f416a.mo456h(interfaceC2063q);
        }
        return AbstractC2064r.m655a(this, interfaceC2063q);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: w */
    public final long mo460w(InterfaceC2063q interfaceC2063q) {
        if (!(interfaceC2063q instanceof EnumC2047a)) {
            return interfaceC2063q.mo647k(this);
        }
        int i = AbstractC2039m.f573a[((EnumC2047a) interfaceC2063q).ordinal()];
        if (i != 1) {
            return i != 2 ? this.f416a.mo460w(interfaceC2063q) : this.f417b.getTotalSeconds();
        }
        LocalDateTime localDateTime = this.f416a;
        ZoneOffset zoneOffset = this.f417b;
        localDateTime.getClass();
        return AbstractC1965a.m441x(localDateTime, zoneOffset);
    }

    public LocalDateTime toLocalDateTime() {
        return this.f416a;
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: i */
    public final InterfaceC2059m mo470i(LocalDate localDate) {
        if (AbstractC1970c.m542b(localDate)) {
            return m511D(this.f416a.mo470i(localDate), this.f417b);
        }
        localDate.getClass();
        return (OffsetDateTime) AbstractC1965a.m418a(localDate, this);
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: c */
    public final InterfaceC2059m mo468c(long j, InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q instanceof EnumC2047a) {
            EnumC2047a enumC2047a = (EnumC2047a) interfaceC2063q;
            int i = AbstractC2039m.f573a[enumC2047a.ordinal()];
            if (i == 1) {
                return m509v(Instant.m464D(j, this.f416a.f414b.f565d), this.f417b);
            }
            if (i == 2) {
                return m511D(this.f416a, ZoneOffset.m524H(enumC2047a.f592b.m661a(j, enumC2047a)));
            }
            return m511D(this.f416a.mo468c(j, interfaceC2063q), this.f417b);
        }
        return (OffsetDateTime) interfaceC2063q.mo648n(this, j);
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public final OffsetDateTime mo469d(long j, InterfaceC2065s interfaceC2065s) {
        if (interfaceC2065s instanceof EnumC2048b) {
            return m511D(this.f416a.mo469d(j, interfaceC2065s), this.f417b);
        }
        return (OffsetDateTime) interfaceC2065s.mo651h(this, j);
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: r */
    public final InterfaceC2059m mo471r(long j, EnumC2048b enumC2048b) {
        return j == Long.MIN_VALUE ? mo469d(Long.MAX_VALUE, enumC2048b).mo469d(1L, enumC2048b) : mo469d(-j, enumC2048b);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: k */
    public final Object mo458k(C2009a c2009a) {
        if (c2009a == AbstractC2064r.f613d || c2009a == AbstractC2064r.f614e) {
            return this.f417b;
        }
        if (c2009a == AbstractC2064r.f610a) {
            return null;
        }
        if (c2009a == AbstractC2064r.f615f) {
            return this.f416a.f413a;
        }
        if (c2009a == AbstractC2064r.f616g) {
            return this.f416a.f414b;
        }
        if (c2009a == AbstractC2064r.f611b) {
            return C1997r.f480c;
        }
        if (c2009a == AbstractC2064r.f612c) {
            return EnumC2048b.NANOS;
        }
        return c2009a.m593a(this);
    }

    @Override // j$.time.temporal.InterfaceC2061o
    /* JADX INFO: renamed from: n */
    public final InterfaceC2059m mo459n(InterfaceC2059m interfaceC2059m) {
        return interfaceC2059m.mo468c(this.f416a.f413a.mo491x(), EnumC2047a.EPOCH_DAY).mo468c(this.f416a.f414b.m625M(), EnumC2047a.NANO_OF_DAY).mo468c(this.f417b.getTotalSeconds(), EnumC2047a.OFFSET_SECONDS);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof OffsetDateTime) {
            OffsetDateTime offsetDateTime = (OffsetDateTime) obj;
            if (this.f416a.equals(offsetDateTime.f416a) && this.f417b.equals(offsetDateTime.f417b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f416a.hashCode() ^ this.f417b.f430b;
    }

    public final String toString() {
        return this.f416a.toString() + this.f417b.f431c;
    }

    private Object writeReplace() {
        return new C2041o((byte) 10, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
