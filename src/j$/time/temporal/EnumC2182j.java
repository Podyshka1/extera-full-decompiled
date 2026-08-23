package j$.time.temporal;

import j$.time.C2103c;
import j$.time.C2159g;
import j$.time.chrono.InterfaceC2114k;
import j$.time.format.C2157y;
import j$.time.format.EnumC2158z;
import java.util.Map;

/* JADX INFO: renamed from: j$.time.temporal.j */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public enum EnumC2182j implements InterfaceC2188p {
    JULIAN_DAY("JulianDay", 2440588),
    MODIFIED_JULIAN_DAY("ModifiedJulianDay", 40587),
    RATA_DIE("RataDie", 719163);

    private static final long serialVersionUID = -7501623920830201812L;

    /* JADX INFO: renamed from: a */
    public final transient String f691a;

    /* JADX INFO: renamed from: b */
    public final transient C2192t f692b;

    /* JADX INFO: renamed from: c */
    public final transient long f693c;

    static {
        ChronoUnit chronoUnit = ChronoUnit.NANOS;
    }

    EnumC2182j(String str, long j) {
        this.f691a = str;
        this.f692b = C2192t.m726f((-365243219162L) + j, 365241780471L + j);
        this.f693c = j;
    }

    @Override // j$.time.temporal.InterfaceC2188p
    /* JADX INFO: renamed from: B */
    public final C2192t mo715B(InterfaceC2184l interfaceC2184l) {
        if (interfaceC2184l.mo485i(EnumC2173a.EPOCH_DAY)) {
            return this.f692b;
        }
        C2159g.m692i("Unsupported field: ", this);
        return null;
    }

    @Override // j$.time.temporal.InterfaceC2188p
    /* JADX INFO: renamed from: G */
    public final InterfaceC2184l mo722G(Map map, C2157y c2157y, EnumC2158z enumC2158z) {
        long jLongValue = ((Long) map.remove(this)).longValue();
        InterfaceC2114k interfaceC2114kM611s = InterfaceC2114k.m611s(c2157y);
        EnumC2158z enumC2158z2 = EnumC2158z.LENIENT;
        long j = this.f693c;
        if (enumC2158z == enumC2158z2) {
            return interfaceC2114kM611s.mo601r(Math.subtractExact(jLongValue, j));
        }
        this.f692b.m729b(jLongValue, this);
        return interfaceC2114kM611s.mo601r(jLongValue - j);
    }

    @Override // j$.time.temporal.InterfaceC2188p
    /* JADX INFO: renamed from: I */
    public final C2192t mo716I() {
        return this.f692b;
    }

    @Override // j$.time.temporal.InterfaceC2188p
    /* JADX INFO: renamed from: P */
    public final long mo717P(InterfaceC2184l interfaceC2184l) {
        return interfaceC2184l.mo486k(EnumC2173a.EPOCH_DAY) + this.f693c;
    }

    @Override // j$.time.temporal.InterfaceC2188p
    /* JADX INFO: renamed from: V */
    public final Temporal mo718V(Temporal temporal, long j) {
        if (this.f692b.m732e(j)) {
            return temporal.mo496a(Math.subtractExact(j, this.f693c), EnumC2173a.EPOCH_DAY);
        }
        throw new C2103c("Invalid value: " + this.f691a + " " + j);
    }

    @Override // j$.time.temporal.InterfaceC2188p
    public final boolean isDateBased() {
        return true;
    }

    @Override // j$.time.temporal.InterfaceC2188p
    /* JADX INFO: renamed from: t */
    public final boolean mo721t(InterfaceC2184l interfaceC2184l) {
        return interfaceC2184l.mo485i(EnumC2173a.EPOCH_DAY);
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f691a;
    }
}
