package p022j$.time.chrono;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.AbstractC2109c;
import p022j$.time.C2108b;
import p022j$.time.LocalDate;
import p022j$.time.format.C2148a;
import p022j$.time.temporal.AbstractC2203r;
import p022j$.time.temporal.C2206u;
import p022j$.time.temporal.EnumC2186a;
import p022j$.time.temporal.InterfaceC2198m;
import p022j$.time.temporal.InterfaceC2202q;

/* JADX INFO: renamed from: j$.time.chrono.x */
/* JADX INFO: loaded from: classes2.dex */
public final class C2142x implements InterfaceC2130l, Serializable {

    /* JADX INFO: renamed from: d */
    public static final C2142x f724d;

    /* JADX INFO: renamed from: e */
    public static final C2142x[] f725e;
    private static final long serialVersionUID = 1466499369062886794L;

    /* JADX INFO: renamed from: a */
    public final transient int f726a;

    /* JADX INFO: renamed from: b */
    public final transient LocalDate f727b;

    /* JADX INFO: renamed from: c */
    public final transient String f728c;

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ boolean mo575e(InterfaceC2202q interfaceC2202q) {
        return AbstractC2104a.m556s(this, interfaceC2202q);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: h */
    public final /* synthetic */ int mo576h(InterfaceC2202q interfaceC2202q) {
        return AbstractC2104a.m551n(this, interfaceC2202q);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: k */
    public final /* synthetic */ Object mo578k(C2148a c2148a) {
        return AbstractC2104a.m560w(this, c2148a);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: w */
    public final /* synthetic */ long mo580w(InterfaceC2202q interfaceC2202q) {
        return AbstractC2104a.m553p(this, interfaceC2202q);
    }

    static {
        C2142x c2142x = new C2142x(-1, LocalDate.m596of(1868, 1, 1), "Meiji");
        f724d = c2142x;
        f725e = new C2142x[]{c2142x, new C2142x(0, LocalDate.m596of(1912, 7, 30), "Taisho"), new C2142x(1, LocalDate.m596of(1926, 12, 25), "Showa"), new C2142x(2, LocalDate.m596of(1989, 1, 8), "Heisei"), new C2142x(3, LocalDate.m596of(2019, 5, 1), "Reiwa")};
    }

    /* JADX INFO: renamed from: p */
    public final C2142x m713p() {
        if (this == f725e[r0.length - 1]) {
            return null;
        }
        return m712s(this.f726a + 1);
    }

    public C2142x(int i, LocalDate localDate, String str) {
        this.f726a = i;
        this.f727b = localDate;
        this.f728c = str;
    }

    /* JADX INFO: renamed from: s */
    public static C2142x m712s(int i) {
        int i2 = i + 1;
        if (i2 >= 0) {
            C2142x[] c2142xArr = f725e;
            if (i2 < c2142xArr.length) {
                return c2142xArr[i2];
            }
        }
        throw new C2108b("Invalid era: " + i);
    }

    @Override // p022j$.time.temporal.InterfaceC2200o
    /* JADX INFO: renamed from: n */
    public final InterfaceC2198m mo579n(InterfaceC2198m interfaceC2198m) {
        return interfaceC2198m.mo588c(getValue(), EnumC2186a.ERA);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001f  */
    /* JADX INFO: renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static C2142x m711m(LocalDate localDate) {
        boolean z;
        LocalDate localDate2 = C2141w.f720d;
        if (AbstractC2109c.m665b(localDate2)) {
            localDate.getClass();
            z = localDate.m611v(localDate2) < 0;
        } else if (localDate.mo612x() < localDate2.mo612x()) {
        }
        if (z) {
            throw new C2108b("JapaneseDate before Meiji 6 are not supported");
        }
        for (int length = f725e.length - 1; length >= 0; length--) {
            C2142x c2142x = f725e[length];
            if (localDate.compareTo(c2142x.f727b) >= 0) {
                return c2142x;
            }
        }
        return null;
    }

    @Override // p022j$.time.chrono.InterfaceC2130l
    public final int getValue() {
        return this.f726a;
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: j */
    public final C2206u mo577j(InterfaceC2202q interfaceC2202q) {
        EnumC2186a enumC2186a = EnumC2186a.ERA;
        if (interfaceC2202q != enumC2186a) {
            return AbstractC2203r.m783d(this, interfaceC2202q);
        }
        return C2139u.f718c.m707i(enumC2186a);
    }

    public final String toString() {
        return this.f728c;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2113D((byte) 5, this);
    }
}
