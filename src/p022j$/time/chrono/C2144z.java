package p022j$.time.chrono;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import p022j$.time.C2108b;
import p022j$.time.LocalDate;
import p022j$.time.temporal.C2206u;
import p022j$.time.temporal.EnumC2186a;
import p022j$.time.temporal.InterfaceC2199n;

/* JADX INFO: renamed from: j$.time.chrono.z */
/* JADX INFO: loaded from: classes2.dex */
public final class C2144z extends AbstractC2119a implements Serializable {

    /* JADX INFO: renamed from: c */
    public static final C2144z f730c = new C2144z();
    private static final long serialVersionUID = 1039765215346859963L;

    @Override // p022j$.time.chrono.InterfaceC2129k
    public final String getId() {
        return "Minguo";
    }

    @Override // p022j$.time.chrono.InterfaceC2129k
    /* JADX INFO: renamed from: p */
    public final InterfaceC2130l mo677p(int i) {
        if (i == 0) {
            return EnumC2112C.BEFORE_ROC;
        }
        if (i == 1) {
            return EnumC2112C.ROC;
        }
        throw new C2108b("Invalid era: " + i);
    }

    @Override // p022j$.time.chrono.InterfaceC2129k
    /* JADX INFO: renamed from: m */
    public final String mo676m() {
        return "roc";
    }

    @Override // p022j$.time.chrono.InterfaceC2129k
    /* JADX INFO: renamed from: s */
    public final InterfaceC2120b mo678s(InterfaceC2199n interfaceC2199n) {
        if (interfaceC2199n instanceof C2111B) {
            return (C2111B) interfaceC2199n;
        }
        return new C2111B(LocalDate.m593D(interfaceC2199n));
    }

    /* JADX INFO: renamed from: i */
    public final C2206u m714i(EnumC2186a enumC2186a) {
        int i = AbstractC2143y.f729a[enumC2186a.ordinal()];
        if (i == 1) {
            C2206u c2206u = EnumC2186a.PROLEPTIC_MONTH.f827b;
            return C2206u.m784e(c2206u.f852a - 22932, c2206u.f855d - 22932);
        }
        if (i == 2) {
            C2206u c2206u2 = EnumC2186a.YEAR.f827b;
            return C2206u.m785f(c2206u2.f855d - 1911, (-c2206u2.f852a) + 1912);
        }
        if (i != 3) {
            return enumC2186a.f827b;
        }
        C2206u c2206u3 = EnumC2186a.YEAR.f827b;
        return C2206u.m784e(c2206u3.f852a - 1911, c2206u3.f855d - 1911);
    }

    private C2144z() {
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public Object writeReplace() {
        return new C2113D((byte) 1, this);
    }
}
