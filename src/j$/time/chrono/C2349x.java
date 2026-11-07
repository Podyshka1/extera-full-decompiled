package j$.time.chrono;

import j$.nio.file.C2288b;
import j$.time.LocalDate;
import j$.time.temporal.C2411s;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2408p;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: renamed from: j$.time.chrono.x */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2349x implements InterfaceC2337l, Serializable {

    /* JADX INFO: renamed from: d */
    public static final C2349x f710d;

    /* JADX INFO: renamed from: e */
    public static final C2349x[] f711e;
    private static final long serialVersionUID = 1466499369062886794L;

    /* JADX INFO: renamed from: a */
    public final transient int f712a;

    /* JADX INFO: renamed from: b */
    public final transient LocalDate f713b;

    /* JADX INFO: renamed from: c */
    public final transient String f714c;

    static {
        C2349x c2349x = new C2349x(-1, LocalDate.of(1868, 1, 1), "Meiji");
        f710d = c2349x;
        f711e = new C2349x[]{c2349x, new C2349x(0, LocalDate.of(1912, 7, 30), "Taisho"), new C2349x(1, LocalDate.of(1926, 12, 25), "Showa"), new C2349x(2, LocalDate.of(1989, 1, 8), "Heisei"), new C2349x(3, LocalDate.of(2019, 5, 1), "Reiwa")};
    }

    public C2349x(int i, LocalDate localDate, String str) {
        this.f712a = i;
        this.f713b = localDate;
        this.f714c = str;
    }

    /* JADX INFO: renamed from: p */
    public static C2349x m807p(LocalDate localDate) {
        if (localDate.m691Z(C2348w.f706d)) {
            C2288b.m639h("JapaneseDate before Meiji 6 are not supported");
            return null;
        }
        for (int length = f711e.length - 1; length >= 0; length--) {
            C2349x c2349x = f711e[length];
            if (localDate.compareTo(c2349x.f713b) >= 0) {
                return c2349x;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: r */
    public static C2349x m808r(int i) {
        int i2 = i + 1;
        if (i2 >= 0) {
            C2349x[] c2349xArr = f711e;
            if (i2 < c2349xArr.length) {
                return c2349xArr[i2];
            }
        }
        C2288b.m633b("Invalid era: ", i);
        return null;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new d0((byte) 5, this);
    }

    @Override // j$.time.chrono.InterfaceC2337l
    public final int getValue() {
        return this.f712a;
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: l */
    public final C2411s mo667l(InterfaceC2408p interfaceC2408p) {
        EnumC2393a enumC2393a = EnumC2393a.ERA;
        return interfaceC2408p == enumC2393a ? C2346u.f704c.mo778B(enumC2393a) : super.mo667l(interfaceC2408p);
    }

    /* JADX INFO: renamed from: q */
    public final C2349x m809q() {
        if (this == f711e[r0.length - 1]) {
            return null;
        }
        return m808r(this.f712a + 1);
    }

    public final String toString() {
        return this.f714c;
    }
}
