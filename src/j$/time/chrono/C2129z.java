package j$.time.chrono;

import j$.time.AbstractC2102b;
import j$.time.C2159g;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.ZoneId;
import j$.time.format.EnumC2158z;
import j$.time.temporal.C2192t;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2184l;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: j$.time.chrono.z */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2129z extends AbstractC2104a implements Serializable {

    /* JADX INFO: renamed from: c */
    public static final C2129z f558c = new C2129z();
    private static final long serialVersionUID = 1039765215346859963L;

    private C2129z() {
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: A */
    public final List mo594A() {
        return AbstractC2102b.m567c(c0.values());
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: C */
    public final InterfaceC2115l mo595C(int i) {
        if (i == 0) {
            return c0.BEFORE_ROC;
        }
        if (i == 1) {
            return c0.ROC;
        }
        C2159g.m685b("Invalid era: ", i);
        return null;
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: D */
    public final int mo596D(InterfaceC2115l interfaceC2115l, int i) {
        if (interfaceC2115l instanceof c0) {
            return interfaceC2115l == c0.ROC ? i : 1 - i;
        }
        throw new ClassCastException("Era must be MinguoEra");
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: H */
    public final InterfaceC2105b mo597H(InterfaceC2184l interfaceC2184l) {
        return interfaceC2184l instanceof b0 ? (b0) interfaceC2184l : new b0(LocalDate.m502G(interfaceC2184l));
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: L */
    public final InterfaceC2105b mo598L() {
        return new b0(LocalDate.m502G(LocalDate.c0(AbstractC2102b.m568d())));
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: Q */
    public final InterfaceC2105b mo599Q(int i, int i2, int i3) {
        return new b0(LocalDate.of(i + 1911, i2, i3));
    }

    @Override // j$.time.chrono.AbstractC2104a, j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: S */
    public final InterfaceC2105b mo578S(Map map, EnumC2158z enumC2158z) {
        return (b0) super.mo578S(map, enumC2158z);
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: T */
    public final ChronoZonedDateTime mo600T(Instant instant, ZoneId zoneId) {
        return C2113j.m609G(this, instant, zoneId);
    }

    @Override // j$.time.chrono.InterfaceC2114k
    public final String getId() {
        return "Minguo";
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: r */
    public final InterfaceC2105b mo601r(long j) {
        return new b0(LocalDate.d0(j));
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: v */
    public final String mo602v() {
        return "roc";
    }

    public Object writeReplace() {
        return new d0((byte) 1, this);
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: x */
    public final InterfaceC2105b mo603x(int i, int i2) {
        return new b0(LocalDate.e0(i + 1911, i2));
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: z */
    public final C2192t mo604z(EnumC2173a enumC2173a) {
        int i = AbstractC2128y.f557a[enumC2173a.ordinal()];
        if (i == 1) {
            C2192t c2192t = EnumC2173a.PROLEPTIC_MONTH.f681b;
            return C2192t.m726f(c2192t.f704a - 22932, c2192t.f707d - 22932);
        }
        if (i == 2) {
            C2192t c2192t2 = EnumC2173a.YEAR.f681b;
            return C2192t.m727g(c2192t2.f707d - 1911, (-c2192t2.f704a) + 1912);
        }
        if (i != 3) {
            return enumC2173a.f681b;
        }
        C2192t c2192t3 = EnumC2173a.YEAR.f681b;
        return C2192t.m726f(c2192t3.f704a - 1911, c2192t3.f707d - 1911);
    }
}
