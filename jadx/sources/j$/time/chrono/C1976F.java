package j$.time.chrono;

import j$.time.C1969b;
import j$.time.LocalDate;
import j$.time.temporal.C2067u;
import j$.time.temporal.EnumC2047a;
import j$.time.temporal.InterfaceC2060n;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.HashMap;

/* JADX INFO: renamed from: j$.time.chrono.F */
/* JADX INFO: loaded from: classes2.dex */
public final class C1976F extends AbstractC1980a implements Serializable {

    /* JADX INFO: renamed from: c */
    public static final C1976F f443c = new C1976F();
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

    @Override // j$.time.chrono.InterfaceC1990k
    /* JADX INFO: renamed from: p */
    public final InterfaceC1991l mo554p(int i) {
        if (i == 0) {
            return EnumC1979I.BEFORE_BE;
        }
        if (i == 1) {
            return EnumC1979I.BE;
        }
        throw new C1969b("Invalid era: " + i);
    }

    @Override // j$.time.chrono.InterfaceC1990k
    public final String getId() {
        return "ThaiBuddhist";
    }

    @Override // j$.time.chrono.InterfaceC1990k
    /* JADX INFO: renamed from: m */
    public final String mo553m() {
        return "buddhist";
    }

    @Override // j$.time.chrono.InterfaceC1990k
    /* JADX INFO: renamed from: s */
    public final InterfaceC1981b mo555s(InterfaceC2060n interfaceC2060n) {
        if (interfaceC2060n instanceof C1978H) {
            return (C1978H) interfaceC2060n;
        }
        return new C1978H(LocalDate.m473D(interfaceC2060n));
    }

    private C1976F() {
    }

    /* JADX INFO: renamed from: i */
    public final C2067u m552i(EnumC2047a enumC2047a) {
        int i = AbstractC1975E.f442a[enumC2047a.ordinal()];
        if (i == 1) {
            C2067u c2067u = EnumC2047a.PROLEPTIC_MONTH.f592b;
            return C2067u.m659e(c2067u.f617a + 6516, c2067u.f620d + 6516);
        }
        if (i == 2) {
            C2067u c2067u2 = EnumC2047a.YEAR.f592b;
            return C2067u.m660f((-(c2067u2.f617a + 543)) + 1, c2067u2.f620d + 543);
        }
        if (i != 3) {
            return enumC2047a.f592b;
        }
        C2067u c2067u3 = EnumC2047a.YEAR.f592b;
        return C2067u.m659e(c2067u3.f617a + 543, c2067u3.f620d + 543);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public Object writeReplace() {
        return new C1974D((byte) 1, this);
    }
}
