package p022j$.time;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.chrono.C2136r;
import p022j$.time.format.C2148a;
import p022j$.time.temporal.AbstractC2203r;
import p022j$.time.temporal.C2205t;
import p022j$.time.temporal.C2206u;
import p022j$.time.temporal.EnumC2186a;
import p022j$.time.temporal.EnumC2187b;
import p022j$.time.temporal.InterfaceC2198m;
import p022j$.time.temporal.InterfaceC2200o;
import p022j$.time.temporal.InterfaceC2202q;
import p022j$.time.temporal.InterfaceC2204s;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class OffsetDateTime implements InterfaceC2198m, InterfaceC2200o, Comparable<OffsetDateTime>, Serializable {

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ int f647c = 0;
    private static final long serialVersionUID = 2287754244819255394L;

    /* JADX INFO: renamed from: a */
    public final LocalDateTime f648a;

    /* JADX INFO: renamed from: b */
    public final ZoneOffset f649b;

    @Override // java.lang.Comparable
    public final int compareTo(OffsetDateTime offsetDateTime) {
        int iCompare;
        OffsetDateTime offsetDateTime2 = offsetDateTime;
        if (this.f649b.equals(offsetDateTime2.f649b)) {
            iCompare = toLocalDateTime().compareTo(offsetDateTime2.toLocalDateTime());
        } else {
            LocalDateTime localDateTime = this.f648a;
            ZoneOffset zoneOffset = this.f649b;
            localDateTime.getClass();
            long jM561x = AbstractC2104a.m561x(localDateTime, zoneOffset);
            LocalDateTime localDateTime2 = offsetDateTime2.f648a;
            ZoneOffset zoneOffset2 = offsetDateTime2.f649b;
            localDateTime2.getClass();
            iCompare = Long.compare(jM561x, AbstractC2104a.m561x(localDateTime2, zoneOffset2));
            if (iCompare == 0) {
                iCompare = this.f648a.f646b.f800d - offsetDateTime2.f648a.f646b.f800d;
            }
        }
        return iCompare == 0 ? toLocalDateTime().compareTo(offsetDateTime2.toLocalDateTime()) : iCompare;
    }

    static {
        LocalDateTime localDateTime = LocalDateTime.f643c;
        ZoneOffset zoneOffset = ZoneOffset.f661g;
        localDateTime.getClass();
        new OffsetDateTime(localDateTime, zoneOffset);
        LocalDateTime localDateTime2 = LocalDateTime.f644d;
        ZoneOffset zoneOffset2 = ZoneOffset.f660f;
        localDateTime2.getClass();
        new OffsetDateTime(localDateTime2, zoneOffset2);
    }

    /* JADX INFO: renamed from: v */
    public static OffsetDateTime m630v(Instant instant, ZoneId zoneId) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(zoneId, "zone");
        ZoneOffset offset = zoneId.getRules().getOffset(instant);
        return new OffsetDateTime(LocalDateTime.m616F(instant.f636a, instant.f637b, offset), offset);
    }

    public OffsetDateTime(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        this.f648a = (LocalDateTime) Objects.requireNonNull(localDateTime, "dateTime");
        this.f649b = (ZoneOffset) Objects.requireNonNull(zoneOffset, "offset");
    }

    /* JADX INFO: renamed from: D */
    public final OffsetDateTime m632D(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        return (this.f648a == localDateTime && this.f649b.equals(zoneOffset)) ? this : new OffsetDateTime(localDateTime, zoneOffset);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: e */
    public final boolean mo575e(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            return true;
        }
        return interfaceC2202q != null && interfaceC2202q.mo769h(this);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: j */
    public final C2206u mo577j(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            if (interfaceC2202q != EnumC2186a.INSTANT_SECONDS && interfaceC2202q != EnumC2186a.OFFSET_SECONDS) {
                return this.f648a.mo577j(interfaceC2202q);
            }
            return ((EnumC2186a) interfaceC2202q).f827b;
        }
        return interfaceC2202q.mo770i(this);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: h */
    public final int mo576h(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            int i = AbstractC2178m.f808a[((EnumC2186a) interfaceC2202q).ordinal()];
            if (i == 1) {
                throw new C2205t("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
            }
            if (i == 2) {
                return this.f649b.getTotalSeconds();
            }
            return this.f648a.mo576h(interfaceC2202q);
        }
        return AbstractC2203r.m780a(this, interfaceC2202q);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: w */
    public final long mo580w(InterfaceC2202q interfaceC2202q) {
        if (!(interfaceC2202q instanceof EnumC2186a)) {
            return interfaceC2202q.mo772k(this);
        }
        int i = AbstractC2178m.f808a[((EnumC2186a) interfaceC2202q).ordinal()];
        if (i != 1) {
            return i != 2 ? this.f648a.mo580w(interfaceC2202q) : this.f649b.getTotalSeconds();
        }
        LocalDateTime localDateTime = this.f648a;
        ZoneOffset zoneOffset = this.f649b;
        localDateTime.getClass();
        return AbstractC2104a.m561x(localDateTime, zoneOffset);
    }

    public LocalDateTime toLocalDateTime() {
        return this.f648a;
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: i */
    public final InterfaceC2198m mo590i(LocalDate localDate) {
        if (AbstractC2109c.m665b(localDate)) {
            return m632D(this.f648a.mo590i(localDate), this.f649b);
        }
        localDate.getClass();
        return (OffsetDateTime) AbstractC2104a.m538a(localDate, this);
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: c */
    public final InterfaceC2198m mo588c(long j, InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            EnumC2186a enumC2186a = (EnumC2186a) interfaceC2202q;
            int i = AbstractC2178m.f808a[enumC2186a.ordinal()];
            if (i == 1) {
                return m630v(Instant.m584D(j, this.f648a.f646b.f800d), this.f649b);
            }
            if (i == 2) {
                return m632D(this.f648a, ZoneOffset.m647H(enumC2186a.f827b.m786a(j, enumC2186a)));
            }
            return m632D(this.f648a.mo588c(j, interfaceC2202q), this.f649b);
        }
        return (OffsetDateTime) interfaceC2202q.mo773n(this, j);
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public final OffsetDateTime mo589d(long j, InterfaceC2204s interfaceC2204s) {
        if (interfaceC2204s instanceof EnumC2187b) {
            return m632D(this.f648a.mo589d(j, interfaceC2204s), this.f649b);
        }
        return (OffsetDateTime) interfaceC2204s.mo776h(this, j);
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: r */
    public final InterfaceC2198m mo591r(long j, EnumC2187b enumC2187b) {
        return j == Long.MIN_VALUE ? mo589d(Long.MAX_VALUE, enumC2187b).mo589d(1L, enumC2187b) : mo589d(-j, enumC2187b);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: k */
    public final Object mo578k(C2148a c2148a) {
        if (c2148a == AbstractC2203r.f848d || c2148a == AbstractC2203r.f849e) {
            return this.f649b;
        }
        if (c2148a == AbstractC2203r.f845a) {
            return null;
        }
        if (c2148a == AbstractC2203r.f850f) {
            return this.f648a.f645a;
        }
        if (c2148a == AbstractC2203r.f851g) {
            return this.f648a.f646b;
        }
        if (c2148a == AbstractC2203r.f846b) {
            return C2136r.f714c;
        }
        if (c2148a == AbstractC2203r.f847c) {
            return EnumC2187b.NANOS;
        }
        return c2148a.m716a(this);
    }

    @Override // p022j$.time.temporal.InterfaceC2200o
    /* JADX INFO: renamed from: n */
    public final InterfaceC2198m mo579n(InterfaceC2198m interfaceC2198m) {
        return interfaceC2198m.mo588c(this.f648a.f645a.mo612x(), EnumC2186a.EPOCH_DAY).mo588c(this.f648a.f646b.m748M(), EnumC2186a.NANO_OF_DAY).mo588c(this.f649b.getTotalSeconds(), EnumC2186a.OFFSET_SECONDS);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof OffsetDateTime) {
            OffsetDateTime offsetDateTime = (OffsetDateTime) obj;
            if (this.f648a.equals(offsetDateTime.f648a) && this.f649b.equals(offsetDateTime.f649b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f648a.hashCode() ^ this.f649b.f662b;
    }

    public final String toString() {
        return this.f648a.toString() + this.f649b.f663c;
    }

    private Object writeReplace() {
        return new C2180o((byte) 10, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
