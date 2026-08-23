package j$.time;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.format.C2009a;
import j$.time.format.DateTimeFormatter;
import j$.time.temporal.AbstractC2064r;
import j$.time.temporal.C2066t;
import j$.time.temporal.C2067u;
import j$.time.temporal.EnumC2047a;
import j$.time.temporal.EnumC2048b;
import j$.time.temporal.InterfaceC2059m;
import j$.time.temporal.InterfaceC2060n;
import j$.time.temporal.InterfaceC2061o;
import j$.time.temporal.InterfaceC2063q;
import j$.time.temporal.InterfaceC2065s;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import org.telegram.messenger.MediaDataController;

/* JADX INFO: loaded from: classes2.dex */
public final class Instant implements InterfaceC2059m, InterfaceC2061o, Comparable<Instant>, Serializable {

    /* JADX INFO: renamed from: c */
    public static final Instant f403c = new Instant(0, 0);
    private static final long serialVersionUID = -665713676816604388L;

    /* JADX INFO: renamed from: a */
    public final long f404a;

    /* JADX INFO: renamed from: b */
    public final int f405b;

    public static Instant now() {
        C1968a.f435b.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = MediaDataController.MAX_STYLE_RUNS_COUNT;
        return m465v(AbstractC1965a.m414T(jCurrentTimeMillis, j), ((int) AbstractC1965a.m413S(jCurrentTimeMillis, j)) * 1000000);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Instant instant) {
        Instant instant2 = instant;
        int iCompare = Long.compare(this.f404a, instant2.f404a);
        return iCompare != 0 ? iCompare : this.f405b - instant2.f405b;
    }

    static {
        m464D(-31557014167219200L, 0L);
        m464D(31556889864403199L, 999999999L);
    }

    /* JADX INFO: renamed from: D */
    public static Instant m464D(long j, long j2) {
        return m465v(AbstractC1965a.m410P(j, AbstractC1965a.m414T(j2, 1000000000L)), (int) AbstractC1965a.m413S(j2, 1000000000L));
    }

    /* JADX INFO: renamed from: A */
    public static Instant m463A(InterfaceC2060n interfaceC2060n) {
        if (interfaceC2060n instanceof Instant) {
            return (Instant) interfaceC2060n;
        }
        Objects.requireNonNull(interfaceC2060n, "temporal");
        try {
            return m464D(interfaceC2060n.mo460w(EnumC2047a.INSTANT_SECONDS), interfaceC2060n.mo456h(EnumC2047a.NANO_OF_SECOND));
        } catch (C1969b e) {
            throw new C1969b("Unable to obtain Instant from TemporalAccessor: " + interfaceC2060n + " of type " + interfaceC2060n.getClass().getName(), e);
        }
    }

    /* JADX INFO: renamed from: v */
    public static Instant m465v(long j, int i) {
        if ((((long) i) | j) == 0) {
            return f403c;
        }
        if (j < -31557014167219200L || j > 31556889864403199L) {
            throw new C1969b("Instant exceeds minimum or maximum instant");
        }
        return new Instant(j, i);
    }

    public Instant(long j, int i) {
        this.f404a = j;
        this.f405b = i;
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: e */
    public final boolean mo455e(InterfaceC2063q interfaceC2063q) {
        return interfaceC2063q instanceof EnumC2047a ? interfaceC2063q == EnumC2047a.INSTANT_SECONDS || interfaceC2063q == EnumC2047a.NANO_OF_SECOND || interfaceC2063q == EnumC2047a.MICRO_OF_SECOND || interfaceC2063q == EnumC2047a.MILLI_OF_SECOND : interfaceC2063q != null && interfaceC2063q.mo644h(this);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: j */
    public final C2067u mo457j(InterfaceC2063q interfaceC2063q) {
        return AbstractC2064r.m658d(this, interfaceC2063q);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: h */
    public final int mo456h(InterfaceC2063q interfaceC2063q) {
        if (!(interfaceC2063q instanceof EnumC2047a)) {
            return AbstractC2064r.m658d(this, interfaceC2063q).m661a(interfaceC2063q.mo647k(this), interfaceC2063q);
        }
        int i = AbstractC2006d.f496a[((EnumC2047a) interfaceC2063q).ordinal()];
        if (i == 1) {
            return this.f405b;
        }
        if (i == 2) {
            return this.f405b / MediaDataController.MAX_STYLE_RUNS_COUNT;
        }
        if (i == 3) {
            return this.f405b / 1000000;
        }
        if (i == 4) {
            EnumC2047a enumC2047a = EnumC2047a.INSTANT_SECONDS;
            enumC2047a.f592b.m661a(this.f404a, enumC2047a);
        }
        throw new C2066t(AbstractC1970c.m541a("Unsupported field: ", interfaceC2063q));
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: w */
    public final long mo460w(InterfaceC2063q interfaceC2063q) {
        int i;
        if (!(interfaceC2063q instanceof EnumC2047a)) {
            return interfaceC2063q.mo647k(this);
        }
        int i2 = AbstractC2006d.f496a[((EnumC2047a) interfaceC2063q).ordinal()];
        if (i2 == 1) {
            i = this.f405b;
        } else if (i2 == 2) {
            i = this.f405b / MediaDataController.MAX_STYLE_RUNS_COUNT;
        } else {
            if (i2 != 3) {
                if (i2 == 4) {
                    return this.f404a;
                }
                throw new C2066t(AbstractC1970c.m541a("Unsupported field: ", interfaceC2063q));
            }
            i = this.f405b / 1000000;
        }
        return i;
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: i */
    public final InterfaceC2059m mo470i(LocalDate localDate) {
        localDate.getClass();
        return (Instant) AbstractC1965a.m418a(localDate, this);
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: c */
    public final InterfaceC2059m mo468c(long j, InterfaceC2063q interfaceC2063q) {
        if (!(interfaceC2063q instanceof EnumC2047a)) {
            return (Instant) interfaceC2063q.mo648n(this, j);
        }
        EnumC2047a enumC2047a = (EnumC2047a) interfaceC2063q;
        enumC2047a.m649r(j);
        int i = AbstractC2006d.f496a[enumC2047a.ordinal()];
        if (i != 1) {
            if (i == 2) {
                int i2 = ((int) j) * MediaDataController.MAX_STYLE_RUNS_COUNT;
                if (i2 != this.f405b) {
                    return m465v(this.f404a, i2);
                }
            } else if (i == 3) {
                int i3 = ((int) j) * 1000000;
                if (i3 != this.f405b) {
                    return m465v(this.f404a, i3);
                }
            } else {
                if (i != 4) {
                    throw new C2066t(AbstractC1970c.m541a("Unsupported field: ", interfaceC2063q));
                }
                if (j != this.f404a) {
                    return m465v(j, this.f405b);
                }
            }
        } else if (j != this.f405b) {
            return m465v(this.f404a, (int) j);
        }
        return this;
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public final Instant mo469d(long j, InterfaceC2065s interfaceC2065s) {
        if (!(interfaceC2065s instanceof EnumC2048b)) {
            return (Instant) interfaceC2065s.mo651h(this, j);
        }
        switch (AbstractC2006d.f497b[((EnumC2048b) interfaceC2065s).ordinal()]) {
            case 1:
                return m466E(0L, j);
            case 2:
                return m466E(j / 1000000, (j % 1000000) * 1000);
            case 3:
                return m466E(j / 1000, (j % 1000) * 1000000);
            case 4:
                return plusSeconds(j);
            case 5:
                return plusSeconds(AbstractC1965a.m409O(j, 60));
            case 6:
                return plusSeconds(AbstractC1965a.m409O(j, 3600));
            case 7:
                return plusSeconds(AbstractC1965a.m409O(j, 43200));
            case 8:
                return plusSeconds(AbstractC1965a.m409O(j, 86400));
            default:
                throw new C2066t("Unsupported unit: " + interfaceC2065s);
        }
    }

    public Instant plusSeconds(long j) {
        return m466E(j, 0L);
    }

    /* JADX INFO: renamed from: E */
    public final Instant m466E(long j, long j2) {
        if ((j | j2) == 0) {
            return this;
        }
        return m464D(AbstractC1965a.m410P(AbstractC1965a.m410P(this.f404a, j), j2 / 1000000000), ((long) this.f405b) + (j2 % 1000000000));
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: r */
    public final InterfaceC2059m mo471r(long j, EnumC2048b enumC2048b) {
        return j == Long.MIN_VALUE ? mo469d(Long.MAX_VALUE, enumC2048b).mo469d(1L, enumC2048b) : mo469d(-j, enumC2048b);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: k */
    public final Object mo458k(C2009a c2009a) {
        if (c2009a == AbstractC2064r.f612c) {
            return EnumC2048b.NANOS;
        }
        if (c2009a == AbstractC2064r.f611b || c2009a == AbstractC2064r.f610a || c2009a == AbstractC2064r.f614e || c2009a == AbstractC2064r.f613d || c2009a == AbstractC2064r.f615f || c2009a == AbstractC2064r.f616g) {
            return null;
        }
        return c2009a.m593a(this);
    }

    @Override // j$.time.temporal.InterfaceC2061o
    /* JADX INFO: renamed from: n */
    public final InterfaceC2059m mo459n(InterfaceC2059m interfaceC2059m) {
        return interfaceC2059m.mo468c(this.f404a, EnumC2047a.INSTANT_SECONDS).mo468c(this.f405b, EnumC2047a.NANO_OF_SECOND);
    }

    public OffsetDateTime atOffset(ZoneOffset zoneOffset) {
        return OffsetDateTime.m509v(this, zoneOffset);
    }

    public long toEpochMilli() {
        long j = this.f404a;
        if (j < 0 && this.f405b > 0) {
            return AbstractC1965a.m410P(AbstractC1965a.m409O(j + 1, MediaDataController.MAX_STYLE_RUNS_COUNT), (this.f405b / 1000000) - MediaDataController.MAX_STYLE_RUNS_COUNT);
        }
        return AbstractC1965a.m410P(AbstractC1965a.m409O(j, MediaDataController.MAX_STYLE_RUNS_COUNT), this.f405b / 1000000);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Instant) {
            Instant instant = (Instant) obj;
            if (this.f404a == instant.f404a && this.f405b == instant.f405b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f404a;
        return (this.f405b * 51) + ((int) (j ^ (j >>> 32)));
    }

    public String toString() {
        return DateTimeFormatter.f501e.m592a(this);
    }

    private Object writeReplace() {
        return new C2041o((byte) 2, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
