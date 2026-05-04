package p022j$.time;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import org.telegram.messenger.MediaDataController;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.format.C2148a;
import p022j$.time.format.DateTimeFormatter;
import p022j$.time.temporal.AbstractC2203r;
import p022j$.time.temporal.C2205t;
import p022j$.time.temporal.C2206u;
import p022j$.time.temporal.EnumC2186a;
import p022j$.time.temporal.EnumC2187b;
import p022j$.time.temporal.InterfaceC2198m;
import p022j$.time.temporal.InterfaceC2199n;
import p022j$.time.temporal.InterfaceC2200o;
import p022j$.time.temporal.InterfaceC2202q;
import p022j$.time.temporal.InterfaceC2204s;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class Instant implements InterfaceC2198m, InterfaceC2200o, Comparable<Instant>, Serializable {

    /* JADX INFO: renamed from: c */
    public static final Instant f635c = new Instant(0, 0);
    private static final long serialVersionUID = -665713676816604388L;

    /* JADX INFO: renamed from: a */
    public final long f636a;

    /* JADX INFO: renamed from: b */
    public final int f637b;

    public static Instant now() {
        C2107a.f667b.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = MediaDataController.MAX_STYLE_RUNS_COUNT;
        return m585v(AbstractC2104a.m534T(jCurrentTimeMillis, j), ((int) AbstractC2104a.m533S(jCurrentTimeMillis, j)) * 1000000);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Instant instant) {
        Instant instant2 = instant;
        int iCompare = Long.compare(this.f636a, instant2.f636a);
        return iCompare != 0 ? iCompare : this.f637b - instant2.f637b;
    }

    static {
        m584D(-31557014167219200L, 0L);
        m584D(31556889864403199L, 999999999L);
    }

    /* JADX INFO: renamed from: D */
    public static Instant m584D(long j, long j2) {
        return m585v(AbstractC2104a.m530P(j, AbstractC2104a.m534T(j2, 1000000000L)), (int) AbstractC2104a.m533S(j2, 1000000000L));
    }

    /* JADX INFO: renamed from: A */
    public static Instant m583A(InterfaceC2199n interfaceC2199n) {
        if (interfaceC2199n instanceof Instant) {
            return (Instant) interfaceC2199n;
        }
        Objects.requireNonNull(interfaceC2199n, "temporal");
        try {
            return m584D(interfaceC2199n.mo580w(EnumC2186a.INSTANT_SECONDS), interfaceC2199n.mo576h(EnumC2186a.NANO_OF_SECOND));
        } catch (C2108b e) {
            throw new C2108b("Unable to obtain Instant from TemporalAccessor: " + interfaceC2199n + " of type " + interfaceC2199n.getClass().getName(), e);
        }
    }

    /* JADX INFO: renamed from: v */
    public static Instant m585v(long j, int i) {
        if ((((long) i) | j) == 0) {
            return f635c;
        }
        if (j < -31557014167219200L || j > 31556889864403199L) {
            throw new C2108b("Instant exceeds minimum or maximum instant");
        }
        return new Instant(j, i);
    }

    public Instant(long j, int i) {
        this.f636a = j;
        this.f637b = i;
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: e */
    public final boolean mo575e(InterfaceC2202q interfaceC2202q) {
        return interfaceC2202q instanceof EnumC2186a ? interfaceC2202q == EnumC2186a.INSTANT_SECONDS || interfaceC2202q == EnumC2186a.NANO_OF_SECOND || interfaceC2202q == EnumC2186a.MICRO_OF_SECOND || interfaceC2202q == EnumC2186a.MILLI_OF_SECOND : interfaceC2202q != null && interfaceC2202q.mo769h(this);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: j */
    public final C2206u mo577j(InterfaceC2202q interfaceC2202q) {
        return AbstractC2203r.m783d(this, interfaceC2202q);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: h */
    public final int mo576h(InterfaceC2202q interfaceC2202q) {
        if (!(interfaceC2202q instanceof EnumC2186a)) {
            return AbstractC2203r.m783d(this, interfaceC2202q).m786a(interfaceC2202q.mo772k(this), interfaceC2202q);
        }
        int i = AbstractC2145d.f731a[((EnumC2186a) interfaceC2202q).ordinal()];
        if (i == 1) {
            return this.f637b;
        }
        if (i == 2) {
            return this.f637b / MediaDataController.MAX_STYLE_RUNS_COUNT;
        }
        if (i == 3) {
            return this.f637b / 1000000;
        }
        if (i == 4) {
            EnumC2186a enumC2186a = EnumC2186a.INSTANT_SECONDS;
            enumC2186a.f827b.m786a(this.f636a, enumC2186a);
        }
        throw new C2205t(AbstractC2109c.m664a("Unsupported field: ", interfaceC2202q));
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: w */
    public final long mo580w(InterfaceC2202q interfaceC2202q) {
        int i;
        if (!(interfaceC2202q instanceof EnumC2186a)) {
            return interfaceC2202q.mo772k(this);
        }
        int i2 = AbstractC2145d.f731a[((EnumC2186a) interfaceC2202q).ordinal()];
        if (i2 == 1) {
            i = this.f637b;
        } else if (i2 == 2) {
            i = this.f637b / MediaDataController.MAX_STYLE_RUNS_COUNT;
        } else {
            if (i2 != 3) {
                if (i2 == 4) {
                    return this.f636a;
                }
                throw new C2205t(AbstractC2109c.m664a("Unsupported field: ", interfaceC2202q));
            }
            i = this.f637b / 1000000;
        }
        return i;
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: i */
    public final InterfaceC2198m mo590i(LocalDate localDate) {
        localDate.getClass();
        return (Instant) AbstractC2104a.m538a(localDate, this);
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: c */
    public final InterfaceC2198m mo588c(long j, InterfaceC2202q interfaceC2202q) {
        if (!(interfaceC2202q instanceof EnumC2186a)) {
            return (Instant) interfaceC2202q.mo773n(this, j);
        }
        EnumC2186a enumC2186a = (EnumC2186a) interfaceC2202q;
        enumC2186a.m774r(j);
        int i = AbstractC2145d.f731a[enumC2186a.ordinal()];
        if (i != 1) {
            if (i == 2) {
                int i2 = ((int) j) * MediaDataController.MAX_STYLE_RUNS_COUNT;
                if (i2 != this.f637b) {
                    return m585v(this.f636a, i2);
                }
            } else if (i == 3) {
                int i3 = ((int) j) * 1000000;
                if (i3 != this.f637b) {
                    return m585v(this.f636a, i3);
                }
            } else {
                if (i != 4) {
                    throw new C2205t(AbstractC2109c.m664a("Unsupported field: ", interfaceC2202q));
                }
                if (j != this.f636a) {
                    return m585v(j, this.f637b);
                }
            }
        } else if (j != this.f637b) {
            return m585v(this.f636a, (int) j);
        }
        return this;
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public final Instant mo589d(long j, InterfaceC2204s interfaceC2204s) {
        if (!(interfaceC2204s instanceof EnumC2187b)) {
            return (Instant) interfaceC2204s.mo776h(this, j);
        }
        switch (AbstractC2145d.f732b[((EnumC2187b) interfaceC2204s).ordinal()]) {
            case 1:
                return m586E(0L, j);
            case 2:
                return m586E(j / 1000000, (j % 1000000) * 1000);
            case 3:
                return m586E(j / 1000, (j % 1000) * 1000000);
            case 4:
                return plusSeconds(j);
            case 5:
                return plusSeconds(AbstractC2104a.m529O(j, 60));
            case 6:
                return plusSeconds(AbstractC2104a.m529O(j, 3600));
            case 7:
                return plusSeconds(AbstractC2104a.m529O(j, 43200));
            case 8:
                return plusSeconds(AbstractC2104a.m529O(j, 86400));
            default:
                throw new C2205t("Unsupported unit: " + interfaceC2204s);
        }
    }

    public Instant plusSeconds(long j) {
        return m586E(j, 0L);
    }

    /* JADX INFO: renamed from: E */
    public final Instant m586E(long j, long j2) {
        if ((j | j2) == 0) {
            return this;
        }
        return m584D(AbstractC2104a.m530P(AbstractC2104a.m530P(this.f636a, j), j2 / 1000000000), ((long) this.f637b) + (j2 % 1000000000));
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: r */
    public final InterfaceC2198m mo591r(long j, EnumC2187b enumC2187b) {
        return j == Long.MIN_VALUE ? mo589d(Long.MAX_VALUE, enumC2187b).mo589d(1L, enumC2187b) : mo589d(-j, enumC2187b);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: k */
    public final Object mo578k(C2148a c2148a) {
        if (c2148a == AbstractC2203r.f847c) {
            return EnumC2187b.NANOS;
        }
        if (c2148a == AbstractC2203r.f846b || c2148a == AbstractC2203r.f845a || c2148a == AbstractC2203r.f849e || c2148a == AbstractC2203r.f848d || c2148a == AbstractC2203r.f850f || c2148a == AbstractC2203r.f851g) {
            return null;
        }
        return c2148a.m716a(this);
    }

    @Override // p022j$.time.temporal.InterfaceC2200o
    /* JADX INFO: renamed from: n */
    public final InterfaceC2198m mo579n(InterfaceC2198m interfaceC2198m) {
        return interfaceC2198m.mo588c(this.f636a, EnumC2186a.INSTANT_SECONDS).mo588c(this.f637b, EnumC2186a.NANO_OF_SECOND);
    }

    public OffsetDateTime atOffset(ZoneOffset zoneOffset) {
        return OffsetDateTime.m630v(this, zoneOffset);
    }

    public long toEpochMilli() {
        long j = this.f636a;
        if (j < 0 && this.f637b > 0) {
            return AbstractC2104a.m530P(AbstractC2104a.m529O(j + 1, MediaDataController.MAX_STYLE_RUNS_COUNT), (this.f637b / 1000000) - MediaDataController.MAX_STYLE_RUNS_COUNT);
        }
        return AbstractC2104a.m530P(AbstractC2104a.m529O(j, MediaDataController.MAX_STYLE_RUNS_COUNT), this.f637b / 1000000);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Instant) {
            Instant instant = (Instant) obj;
            if (this.f636a == instant.f636a && this.f637b == instant.f637b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f636a;
        return (this.f637b * 51) + ((int) (j ^ (j >>> 32)));
    }

    public String toString() {
        return DateTimeFormatter.f736e.m715a(this);
    }

    private Object writeReplace() {
        return new C2180o((byte) 2, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
