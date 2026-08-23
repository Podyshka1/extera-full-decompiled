package j$.time;

import j$.time.temporal.AbstractC2189q;
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

/* JADX INFO: renamed from: j$.time.q */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2169q implements Temporal, InterfaceC2185m, Comparable, Serializable {

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ int f668c = 0;
    private static final long serialVersionUID = 7264499704384272492L;

    /* JADX INFO: renamed from: a */
    public final C2162j f669a;

    /* JADX INFO: renamed from: b */
    public final ZoneOffset f670b;

    static {
        C2162j c2162j = C2162j.f651e;
        ZoneOffset zoneOffset = ZoneOffset.f492g;
        c2162j.getClass();
        new C2169q(c2162j, zoneOffset);
        C2162j c2162j2 = C2162j.f652f;
        ZoneOffset zoneOffset2 = ZoneOffset.f491f;
        c2162j2.getClass();
        new C2169q(c2162j2, zoneOffset2);
    }

    public C2169q(C2162j c2162j, ZoneOffset zoneOffset) {
        Objects.requireNonNull(c2162j, "time");
        this.f669a = c2162j;
        Objects.requireNonNull(zoneOffset, "offset");
        this.f670b = zoneOffset;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2170r((byte) 9, this);
    }

    /* JADX INFO: renamed from: B */
    public final long m706B() {
        return this.f669a.d0() - (((long) this.f670b.getTotalSeconds()) * 1000000000);
    }

    /* JADX INFO: renamed from: G */
    public final C2169q m707G(C2162j c2162j, ZoneOffset zoneOffset) {
        return (this.f669a == c2162j && this.f670b.equals(zoneOffset)) ? this : new C2169q(c2162j, zoneOffset);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: a */
    public final Temporal mo496a(long j, InterfaceC2188p interfaceC2188p) {
        if (!(interfaceC2188p instanceof EnumC2173a)) {
            return (C2169q) interfaceC2188p.mo718V(this, j);
        }
        EnumC2173a enumC2173a = EnumC2173a.OFFSET_SECONDS;
        C2162j c2162j = this.f669a;
        if (interfaceC2188p != enumC2173a) {
            return m707G(c2162j.mo496a(j, interfaceC2188p), this.f670b);
        }
        EnumC2173a enumC2173a2 = (EnumC2173a) interfaceC2188p;
        return m707G(c2162j, ZoneOffset.m549Z(enumC2173a2.f681b.m728a(j, enumC2173a2)));
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
        C2169q c2169q = (C2169q) obj;
        if (this.f670b.equals(c2169q.f670b)) {
            return this.f669a.compareTo(c2169q.f669a);
        }
        int iCompare = Long.compare(m706B(), c2169q.m706B());
        return iCompare == 0 ? this.f669a.compareTo(c2169q.f669a) : iCompare;
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: d */
    public final Object mo482d(C2196x c2196x) {
        if (c2196x == AbstractC2189q.f700d || c2196x == AbstractC2189q.f701e) {
            return this.f670b;
        }
        if (((c2196x == AbstractC2189q.f697a) || (c2196x == AbstractC2189q.f698b)) || c2196x == AbstractC2189q.f702f) {
            return null;
        }
        return c2196x == AbstractC2189q.f703g ? this.f669a : c2196x == AbstractC2189q.f699c ? ChronoUnit.NANOS : c2196x.m734m(this);
    }

    @Override // j$.time.temporal.InterfaceC2185m
    /* JADX INFO: renamed from: e */
    public final Temporal mo483e(Temporal temporal) {
        return temporal.mo496a(this.f669a.d0(), EnumC2173a.NANO_OF_DAY).mo496a(this.f670b.getTotalSeconds(), EnumC2173a.OFFSET_SECONDS);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2169q) {
            C2169q c2169q = (C2169q) obj;
            if (this.f669a.equals(c2169q.f669a) && this.f670b.equals(c2169q.f670b)) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: h */
    public final Temporal mo559j(LocalDate localDate) {
        return (C2169q) localDate.mo483e(this);
    }

    public final int hashCode() {
        return this.f670b.f493b ^ this.f669a.hashCode();
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: i */
    public final boolean mo485i(InterfaceC2188p interfaceC2188p) {
        return interfaceC2188p instanceof EnumC2173a ? ((EnumC2173a) interfaceC2188p).m720Y() || interfaceC2188p == EnumC2173a.OFFSET_SECONDS : interfaceC2188p != null && interfaceC2188p.mo721t(this);
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: k */
    public final long mo486k(InterfaceC2188p interfaceC2188p) {
        return interfaceC2188p instanceof EnumC2173a ? interfaceC2188p == EnumC2173a.OFFSET_SECONDS ? this.f670b.getTotalSeconds() : this.f669a.mo486k(interfaceC2188p) : interfaceC2188p.mo717P(this);
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: m */
    public final C2192t mo487m(InterfaceC2188p interfaceC2188p) {
        return interfaceC2188p instanceof EnumC2173a ? interfaceC2188p == EnumC2173a.OFFSET_SECONDS ? ((EnumC2173a) interfaceC2188p).f681b : this.f669a.mo487m(interfaceC2188p) : interfaceC2188p.mo715B(this);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: o */
    public final long mo500o(Temporal temporal, InterfaceC2190r interfaceC2190r) {
        C2169q c2169q;
        if (temporal instanceof C2169q) {
            c2169q = (C2169q) temporal;
        } else {
            try {
                c2169q = new C2169q(C2162j.m694G(temporal), ZoneOffset.m546V(temporal));
            } catch (C2103c e) {
                C2159g.m690g("Unable to obtain OffsetTime from TemporalAccessor: ", temporal, temporal.getClass().getName(), e);
                return 0L;
            }
        }
        if (!(interfaceC2190r instanceof ChronoUnit)) {
            return interfaceC2190r.between(this, c2169q);
        }
        long jM706B = c2169q.m706B() - m706B();
        switch (AbstractC2168p.f667a[((ChronoUnit) interfaceC2190r).ordinal()]) {
            case 1:
                return jM706B;
            case 2:
                return jM706B / 1000;
            case 3:
                return jM706B / 1000000;
            case 4:
                return jM706B / 1000000000;
            case 5:
                return jM706B / 60000000000L;
            case 6:
                return jM706B / 3600000000000L;
            case 7:
                return jM706B / 43200000000000L;
            default:
                C2159g.m687d("Unsupported unit: ", interfaceC2190r);
                return 0L;
        }
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public final C2169q mo497b(long j, InterfaceC2190r interfaceC2190r) {
        return interfaceC2190r instanceof ChronoUnit ? m707G(this.f669a.mo497b(j, interfaceC2190r), this.f670b) : (C2169q) interfaceC2190r.mo714t(this, j);
    }

    public final String toString() {
        return this.f669a.toString() + this.f670b.f494c;
    }
}
