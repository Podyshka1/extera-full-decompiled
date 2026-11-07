package j$.time.chrono;

import j$.desugar.sun.nio.fs.AbstractC2248g;
import j$.nio.file.C2288b;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.ZoneId;
import j$.time.format.EnumC2380z;
import j$.time.temporal.C2411s;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2404l;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class f0 extends AbstractC2326a implements Serializable {

    /* JADX INFO: renamed from: c */
    public static final f0 f670c = new f0();
    private static final long serialVersionUID = 2775954514031616474L;

    static {
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        map.put("en", new String[]{"BB", "BE"});
        map.put("th", new String[]{"BB", "BE"});
        map2.put("en", new String[]{"B.B.", "B.E."});
        map2.put("th", new String[]{"พ.ศ.", "ปีก่อนคริสต์กาลที่"});
        map3.put("en", new String[]{"Before Buddhist", "Budhhist Era"});
        map3.put("th", new String[]{"พุทธศักราช", "ปีก่อนคริสต์กาลที่"});
    }

    private f0() {
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: B */
    public final C2411s mo778B(EnumC2393a enumC2393a) {
        int i = e0.f667a[enumC2393a.ordinal()];
        if (i == 1) {
            C2411s c2411s = EnumC2393a.PROLEPTIC_MONTH.f832b;
            return C2411s.m883f(c2411s.f856a + 6516, c2411s.f859d + 6516);
        }
        if (i == 2) {
            C2411s c2411s2 = EnumC2393a.YEAR.f832b;
            return C2411s.m884g((-(c2411s2.f856a + 543)) + 1, c2411s2.f859d + 543);
        }
        if (i != 3) {
            return enumC2393a.f832b;
        }
        C2411s c2411s3 = EnumC2393a.YEAR.f832b;
        return C2411s.m883f(c2411s3.f856a + 543, c2411s3.f859d + 543);
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: C */
    public final List mo779C() {
        return AbstractC2248g.m543p(i0.values());
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: E */
    public final InterfaceC2337l mo780E(int i) {
        if (i == 0) {
            return i0.BEFORE_BE;
        }
        if (i == 1) {
            return i0.BE;
        }
        C2288b.m633b("Invalid era: ", i);
        return null;
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: F */
    public final int mo781F(InterfaceC2337l interfaceC2337l, int i) {
        if (interfaceC2337l instanceof i0) {
            return interfaceC2337l == i0.BE ? i : 1 - i;
        }
        throw new ClassCastException("Era must be BuddhistEra");
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: J */
    public final InterfaceC2327b mo782J(InterfaceC2404l interfaceC2404l) {
        return interfaceC2404l instanceof h0 ? (h0) interfaceC2404l : new h0(LocalDate.m682I(interfaceC2404l));
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: M */
    public final InterfaceC2327b mo783M() {
        return new h0(LocalDate.m682I(LocalDate.d0(AbstractC2248g.m527A())));
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: S */
    public final InterfaceC2327b mo784S(int i, int i2, int i3) {
        return new h0(LocalDate.of(i - 543, i2, i3));
    }

    @Override // j$.time.chrono.AbstractC2326a, j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: U */
    public final InterfaceC2327b mo762U(Map map, EnumC2380z enumC2380z) {
        return (h0) super.mo762U(map, enumC2380z);
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: V */
    public final ChronoZonedDateTime mo785V(Instant instant, ZoneId zoneId) {
        return C2335j.m793I(this, instant, zoneId);
    }

    @Override // j$.time.chrono.InterfaceC2336k
    public final String getId() {
        return "ThaiBuddhist";
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: p */
    public final InterfaceC2327b mo786p(long j) {
        return new h0(LocalDate.e0(j));
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: v */
    public final String mo787v() {
        return "buddhist";
    }

    public Object writeReplace() {
        return new d0((byte) 1, this);
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: x */
    public final InterfaceC2327b mo788x(int i, int i2) {
        return new h0(LocalDate.f0(i - 543, i2));
    }
}
