package j$.time.chrono;

import j$.time.C1969b;
import j$.time.LocalDate;
import j$.time.temporal.C2067u;
import j$.time.temporal.EnumC2047a;
import j$.time.temporal.InterfaceC2060n;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: renamed from: j$.time.chrono.z */
/* JADX INFO: loaded from: classes2.dex */
public final class C2005z extends AbstractC1980a implements Serializable {

    /* JADX INFO: renamed from: c */
    public static final C2005z f495c = new C2005z();
    private static final long serialVersionUID = 1039765215346859963L;

    @Override // j$.time.chrono.InterfaceC1990k
    public final String getId() {
        return "Minguo";
    }

    @Override // j$.time.chrono.InterfaceC1990k
    /* JADX INFO: renamed from: p */
    public final InterfaceC1991l mo554p(int i) {
        if (i == 0) {
            return EnumC1973C.BEFORE_ROC;
        }
        if (i == 1) {
            return EnumC1973C.ROC;
        }
        throw new C1969b("Invalid era: " + i);
    }

    @Override // j$.time.chrono.InterfaceC1990k
    /* JADX INFO: renamed from: m */
    public final String mo553m() {
        return "roc";
    }

    @Override // j$.time.chrono.InterfaceC1990k
    /* JADX INFO: renamed from: s */
    public final InterfaceC1981b mo555s(InterfaceC2060n interfaceC2060n) {
        if (interfaceC2060n instanceof C1972B) {
            return (C1972B) interfaceC2060n;
        }
        return new C1972B(LocalDate.m473D(interfaceC2060n));
    }

    /* JADX INFO: renamed from: i */
    public final C2067u m591i(EnumC2047a enumC2047a) {
        int i = AbstractC2004y.f494a[enumC2047a.ordinal()];
        if (i == 1) {
            C2067u c2067u = EnumC2047a.PROLEPTIC_MONTH.f592b;
            return C2067u.m659e(c2067u.f617a - 22932, c2067u.f620d - 22932);
        }
        if (i == 2) {
            C2067u c2067u2 = EnumC2047a.YEAR.f592b;
            return C2067u.m660f(c2067u2.f620d - 1911, (-c2067u2.f617a) + 1912);
        }
        if (i != 3) {
            return enumC2047a.f592b;
        }
        C2067u c2067u3 = EnumC2047a.YEAR.f592b;
        return C2067u.m659e(c2067u3.f617a - 1911, c2067u3.f620d - 1911);
    }

    private C2005z() {
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public Object writeReplace() {
        return new C1974D((byte) 1, this);
    }
}
