package j$.time.chrono;

import j$.desugar.sun.nio.fs.AbstractC2108g;
import j$.nio.file.C2148b;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.ZoneId;
import j$.time.format.EnumC2240z;
import j$.time.temporal.C2272s;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2265l;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: j$.time.chrono.z */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2211z extends AbstractC2186a implements Serializable {

    /* JADX INFO: renamed from: c */
    public static final C2211z f714c = new C2211z();
    private static final long serialVersionUID = 1039765215346859963L;

    private C2211z() {
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: B */
    public final C2272s mo743B(EnumC2254a enumC2254a) {
        int i = AbstractC2210y.f713a[enumC2254a.ordinal()];
        if (i == 1) {
            C2272s c2272s = EnumC2254a.PROLEPTIC_MONTH.f830b;
            return C2272s.m835f(c2272s.f854a - 22932, c2272s.f857d - 22932);
        }
        if (i == 2) {
            C2272s c2272s2 = EnumC2254a.YEAR.f830b;
            return C2272s.m836g(c2272s2.f857d - 1911, (-c2272s2.f854a) + 1912);
        }
        if (i != 3) {
            return enumC2254a.f830b;
        }
        C2272s c2272s3 = EnumC2254a.YEAR.f830b;
        return C2272s.m835f(c2272s3.f854a - 1911, c2272s3.f857d - 1911);
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: C */
    public final List mo744C() {
        return AbstractC2108g.m519p(c0.values());
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: E */
    public final InterfaceC2197l mo745E(int i) {
        if (i == 0) {
            return c0.BEFORE_ROC;
        }
        if (i == 1) {
            return c0.ROC;
        }
        C2148b.m609b("Invalid era: ", i);
        return null;
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: F */
    public final int mo746F(InterfaceC2197l interfaceC2197l, int i) {
        if (interfaceC2197l instanceof c0) {
            return interfaceC2197l == c0.ROC ? i : 1 - i;
        }
        throw new ClassCastException("Era must be MinguoEra");
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: J */
    public final InterfaceC2187b mo747J(InterfaceC2265l interfaceC2265l) {
        return interfaceC2265l instanceof b0 ? (b0) interfaceC2265l : new b0(LocalDate.m658I(interfaceC2265l));
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: N */
    public final InterfaceC2187b mo748N() {
        return new b0(LocalDate.m658I(LocalDate.f0(AbstractC2108g.m503A())));
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: T */
    public final InterfaceC2187b mo749T(int i, int i2, int i3) {
        return new b0(LocalDate.of(i + 1911, i2, i3));
    }

    @Override // j$.time.chrono.AbstractC2186a, j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: V */
    public final InterfaceC2187b mo729V(Map map, EnumC2240z enumC2240z) {
        return (b0) super.mo729V(map, enumC2240z);
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: W */
    public final ChronoZonedDateTime mo750W(Instant instant, ZoneId zoneId) {
        return C2195j.m756I(this, instant, zoneId);
    }

    @Override // j$.time.chrono.InterfaceC2196k
    public final String getId() {
        return "Minguo";
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: p */
    public final InterfaceC2187b mo751p(long j) {
        return new b0(LocalDate.g0(j));
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: v */
    public final String mo752v() {
        return "roc";
    }

    public Object writeReplace() {
        return new d0((byte) 1, this);
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: x */
    public final InterfaceC2187b mo753x(int i, int i2) {
        return new b0(LocalDate.h0(i + 1911, i2));
    }
}
