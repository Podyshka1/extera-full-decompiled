package j$.time;

import j$.time.chrono.C2121r;
import j$.time.chrono.InterfaceC2114k;
import j$.time.format.C2149q;
import j$.time.format.EnumC2158z;
import j$.time.format.a0;
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
import java.util.Locale;
import java.util.Objects;
import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: renamed from: j$.time.t */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2172t implements Temporal, InterfaceC2185m, Comparable, Serializable {

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ int f675b = 0;
    private static final long serialVersionUID = -23038383694477807L;

    /* JADX INFO: renamed from: a */
    public final int f676a;

    static {
        C2149q c2149q = new C2149q();
        c2149q.m660h(EnumC2173a.YEAR, 4, 10, a0.EXCEEDS_PAD);
        c2149q.m664l(Locale.getDefault(), EnumC2158z.SMART, null);
    }

    public C2172t(int i) {
        this.f676a = i;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX INFO: renamed from: t */
    public static C2172t m710t(int i) {
        EnumC2173a.YEAR.m719X(i);
        return new C2172t(i);
    }

    private Object writeReplace() {
        return new C2170r((byte) 11, this);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public final C2172t mo497b(long j, InterfaceC2190r interfaceC2190r) {
        if (!(interfaceC2190r instanceof ChronoUnit)) {
            return (C2172t) interfaceC2190r.mo714t(this, j);
        }
        int i = AbstractC2171s.f674b[((ChronoUnit) interfaceC2190r).ordinal()];
        if (i == 1) {
            return m712G(j);
        }
        if (i == 2) {
            return m712G(Math.multiplyExact(j, 10L));
        }
        if (i == 3) {
            return m712G(Math.multiplyExact(j, 100L));
        }
        if (i == 4) {
            return m712G(Math.multiplyExact(j, 1000L));
        }
        if (i == 5) {
            EnumC2173a enumC2173a = EnumC2173a.ERA;
            return mo496a(Math.addExact(mo486k(enumC2173a), j), enumC2173a);
        }
        C2159g.m687d("Unsupported unit: ", interfaceC2190r);
        return null;
    }

    /* JADX INFO: renamed from: G */
    public final C2172t m712G(long j) {
        if (j == 0) {
            return this;
        }
        EnumC2173a enumC2173a = EnumC2173a.YEAR;
        return m710t(enumC2173a.f681b.m728a(((long) this.f676a) + j, enumC2173a));
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public final C2172t mo496a(long j, InterfaceC2188p interfaceC2188p) {
        if (!(interfaceC2188p instanceof EnumC2173a)) {
            return (C2172t) interfaceC2188p.mo718V(this, j);
        }
        EnumC2173a enumC2173a = (EnumC2173a) interfaceC2188p;
        enumC2173a.m719X(j);
        int i = AbstractC2171s.f673a[enumC2173a.ordinal()];
        if (i == 1) {
            if (this.f676a < 1) {
                j = 1 - j;
            }
            return m710t((int) j);
        }
        if (i == 2) {
            return m710t((int) j);
        }
        if (i == 3) {
            return mo486k(EnumC2173a.ERA) == j ? this : m710t(1 - this.f676a);
        }
        throw new C2191s(AbstractC2130d.m629a("Unsupported field: ", interfaceC2188p));
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
    public final int compareTo(Object obj) {
        return this.f676a - ((C2172t) obj).f676a;
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: d */
    public final Object mo482d(C2196x c2196x) {
        return c2196x == AbstractC2189q.f698b ? C2121r.f543c : c2196x == AbstractC2189q.f699c ? ChronoUnit.YEARS : super.mo482d(c2196x);
    }

    @Override // j$.time.temporal.InterfaceC2185m
    /* JADX INFO: renamed from: e */
    public final Temporal mo483e(Temporal temporal) {
        if (InterfaceC2114k.m611s(temporal).equals(C2121r.f543c)) {
            return temporal.mo496a(this.f676a, EnumC2173a.YEAR);
        }
        C2159g.m684a("Adjustment only supported on ISO date-time");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C2172t) && this.f676a == ((C2172t) obj).f676a;
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: g */
    public final int mo484g(InterfaceC2188p interfaceC2188p) {
        return mo487m(interfaceC2188p).m728a(mo486k(interfaceC2188p), interfaceC2188p);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: h */
    public final Temporal mo559j(LocalDate localDate) {
        return (C2172t) localDate.mo483e(this);
    }

    public final int hashCode() {
        return this.f676a;
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: i */
    public final boolean mo485i(InterfaceC2188p interfaceC2188p) {
        return interfaceC2188p instanceof EnumC2173a ? interfaceC2188p == EnumC2173a.YEAR || interfaceC2188p == EnumC2173a.YEAR_OF_ERA || interfaceC2188p == EnumC2173a.ERA : interfaceC2188p != null && interfaceC2188p.mo721t(this);
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: k */
    public final long mo486k(InterfaceC2188p interfaceC2188p) {
        if (!(interfaceC2188p instanceof EnumC2173a)) {
            return interfaceC2188p.mo717P(this);
        }
        int i = AbstractC2171s.f673a[((EnumC2173a) interfaceC2188p).ordinal()];
        if (i == 1) {
            int i2 = this.f676a;
            if (i2 < 1) {
                i2 = 1 - i2;
            }
            return i2;
        }
        if (i == 2) {
            return this.f676a;
        }
        if (i == 3) {
            return this.f676a < 1 ? 0 : 1;
        }
        throw new C2191s(AbstractC2130d.m629a("Unsupported field: ", interfaceC2188p));
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: m */
    public final C2192t mo487m(InterfaceC2188p interfaceC2188p) {
        if (interfaceC2188p == EnumC2173a.YEAR_OF_ERA) {
            return C2192t.m726f(1L, this.f676a <= 0 ? 1000000000L : 999999999L);
        }
        return super.mo487m(interfaceC2188p);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: o */
    public final long mo500o(Temporal temporal, InterfaceC2190r interfaceC2190r) {
        C2172t c2172tM710t;
        if (temporal instanceof C2172t) {
            c2172tM710t = (C2172t) temporal;
        } else {
            Objects.requireNonNull(temporal, "temporal");
            try {
                if (!C2121r.f543c.equals(InterfaceC2114k.m611s(temporal))) {
                    temporal = LocalDate.m502G(temporal);
                }
                c2172tM710t = m710t(temporal.mo484g(EnumC2173a.YEAR));
            } catch (C2103c e) {
                C2159g.m690g("Unable to obtain Year from TemporalAccessor: ", temporal, temporal.getClass().getName(), e);
                return 0L;
            }
        }
        if (!(interfaceC2190r instanceof ChronoUnit)) {
            return interfaceC2190r.between(this, c2172tM710t);
        }
        long j = ((long) c2172tM710t.f676a) - ((long) this.f676a);
        int i = AbstractC2171s.f674b[((ChronoUnit) interfaceC2190r).ordinal()];
        if (i == 1) {
            return j;
        }
        if (i == 2) {
            return j / 10;
        }
        if (i == 3) {
            return j / 100;
        }
        if (i == 4) {
            return j / 1000;
        }
        if (i == 5) {
            EnumC2173a enumC2173a = EnumC2173a.ERA;
            return c2172tM710t.mo486k(enumC2173a) - mo486k(enumC2173a);
        }
        C2159g.m687d("Unsupported unit: ", interfaceC2190r);
        return 0L;
    }

    public final String toString() {
        return Integer.toString(this.f676a);
    }
}
