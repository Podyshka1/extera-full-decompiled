package p022j$.time.chrono;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.HashMap;
import p022j$.time.C2108b;
import p022j$.time.LocalDate;
import p022j$.time.temporal.C2206u;
import p022j$.time.temporal.EnumC2186a;
import p022j$.time.temporal.InterfaceC2199n;

/* JADX INFO: renamed from: j$.time.chrono.F */
/* JADX INFO: loaded from: classes2.dex */
public final class C2115F extends AbstractC2119a implements Serializable {

    /* JADX INFO: renamed from: c */
    public static final C2115F f675c = new C2115F();
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

    @Override // p022j$.time.chrono.InterfaceC2129k
    /* JADX INFO: renamed from: p */
    public final InterfaceC2130l mo677p(int i) {
        if (i == 0) {
            return EnumC2118I.BEFORE_BE;
        }
        if (i == 1) {
            return EnumC2118I.f678BE;
        }
        throw new C2108b("Invalid era: " + i);
    }

    @Override // p022j$.time.chrono.InterfaceC2129k
    public final String getId() {
        return "ThaiBuddhist";
    }

    @Override // p022j$.time.chrono.InterfaceC2129k
    /* JADX INFO: renamed from: m */
    public final String mo676m() {
        return "buddhist";
    }

    @Override // p022j$.time.chrono.InterfaceC2129k
    /* JADX INFO: renamed from: s */
    public final InterfaceC2120b mo678s(InterfaceC2199n interfaceC2199n) {
        if (interfaceC2199n instanceof C2117H) {
            return (C2117H) interfaceC2199n;
        }
        return new C2117H(LocalDate.m593D(interfaceC2199n));
    }

    private C2115F() {
    }

    /* JADX INFO: renamed from: i */
    public final C2206u m675i(EnumC2186a enumC2186a) {
        int i = AbstractC2114E.f674a[enumC2186a.ordinal()];
        if (i == 1) {
            C2206u c2206u = EnumC2186a.PROLEPTIC_MONTH.f827b;
            return C2206u.m784e(c2206u.f852a + 6516, c2206u.f855d + 6516);
        }
        if (i == 2) {
            C2206u c2206u2 = EnumC2186a.YEAR.f827b;
            return C2206u.m785f((-(c2206u2.f852a + 543)) + 1, c2206u2.f855d + 543);
        }
        if (i != 3) {
            return enumC2186a.f827b;
        }
        C2206u c2206u3 = EnumC2186a.YEAR.f827b;
        return C2206u.m784e(c2206u3.f852a + 543, c2206u3.f855d + 543);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public Object writeReplace() {
        return new C2113D((byte) 1, this);
    }
}
