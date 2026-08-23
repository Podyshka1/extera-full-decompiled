package j$.time.chrono;

import j$.time.C2159g;
import j$.time.LocalDate;
import j$.time.temporal.C2192t;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2188p;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: renamed from: j$.time.chrono.x */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2127x implements InterfaceC2115l, Serializable {

    /* JADX INFO: renamed from: d */
    public static final C2127x f552d;

    /* JADX INFO: renamed from: e */
    public static final C2127x[] f553e;
    private static final long serialVersionUID = 1466499369062886794L;

    /* JADX INFO: renamed from: a */
    public final transient int f554a;

    /* JADX INFO: renamed from: b */
    public final transient LocalDate f555b;

    /* JADX INFO: renamed from: c */
    public final transient String f556c;

    static {
        C2127x c2127x = new C2127x(-1, LocalDate.of(1868, 1, 1), "Meiji");
        f552d = c2127x;
        f553e = new C2127x[]{c2127x, new C2127x(0, LocalDate.of(1912, 7, 30), "Taisho"), new C2127x(1, LocalDate.of(1926, 12, 25), "Showa"), new C2127x(2, LocalDate.of(1989, 1, 8), "Heisei"), new C2127x(3, LocalDate.of(2019, 5, 1), "Reiwa")};
    }

    public C2127x(int i, LocalDate localDate, String str) {
        this.f554a = i;
        this.f555b = localDate;
        this.f556c = str;
    }

    /* JADX INFO: renamed from: r */
    public static C2127x m626r(LocalDate localDate) {
        if (localDate.m512Y(C2126w.f548d)) {
            C2159g.m684a("JapaneseDate before Meiji 6 are not supported");
            return null;
        }
        for (int length = f553e.length - 1; length >= 0; length--) {
            C2127x c2127x = f553e[length];
            if (localDate.compareTo(c2127x.f555b) >= 0) {
                return c2127x;
            }
        }
        return null;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX INFO: renamed from: t */
    public static C2127x m627t(int i) {
        int i2 = i + 1;
        if (i2 >= 0) {
            C2127x[] c2127xArr = f553e;
            if (i2 < c2127xArr.length) {
                return c2127xArr[i2];
            }
        }
        C2159g.m685b("Invalid era: ", i);
        return null;
    }

    private Object writeReplace() {
        return new d0((byte) 5, this);
    }

    @Override // j$.time.chrono.InterfaceC2115l
    public final int getValue() {
        return this.f554a;
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: m */
    public final C2192t mo487m(InterfaceC2188p interfaceC2188p) {
        EnumC2173a enumC2173a = EnumC2173a.ERA;
        return interfaceC2188p == enumC2173a ? C2124u.f546c.mo604z(enumC2173a) : super.mo487m(interfaceC2188p);
    }

    /* JADX INFO: renamed from: s */
    public final C2127x m628s() {
        if (this == f553e[r0.length - 1]) {
            return null;
        }
        return m627t(this.f554a + 1);
    }

    public final String toString() {
        return this.f556c;
    }
}
