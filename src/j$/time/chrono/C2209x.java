package j$.time.chrono;

import j$.nio.file.C2148b;
import j$.time.LocalDate;
import j$.time.temporal.C2272s;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2269p;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: renamed from: j$.time.chrono.x */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2209x implements InterfaceC2197l, Serializable {

    /* JADX INFO: renamed from: d */
    public static final C2209x f708d;

    /* JADX INFO: renamed from: e */
    public static final C2209x[] f709e;
    private static final long serialVersionUID = 1466499369062886794L;

    /* JADX INFO: renamed from: a */
    public final transient int f710a;

    /* JADX INFO: renamed from: b */
    public final transient LocalDate f711b;

    /* JADX INFO: renamed from: c */
    public final transient String f712c;

    static {
        C2209x c2209x = new C2209x(-1, LocalDate.of(1868, 1, 1), "Meiji");
        f708d = c2209x;
        f709e = new C2209x[]{c2209x, new C2209x(0, LocalDate.of(1912, 7, 30), "Taisho"), new C2209x(1, LocalDate.of(1926, 12, 25), "Showa"), new C2209x(2, LocalDate.of(1989, 1, 8), "Heisei"), new C2209x(3, LocalDate.of(2019, 5, 1), "Reiwa")};
    }

    public C2209x(int i, LocalDate localDate, String str) {
        this.f710a = i;
        this.f711b = localDate;
        this.f712c = str;
    }

    /* JADX INFO: renamed from: p */
    public static C2209x m763p(LocalDate localDate) {
        if (localDate.b0(C2208w.f704d)) {
            C2148b.m615h("JapaneseDate before Meiji 6 are not supported");
            return null;
        }
        for (int length = f709e.length - 1; length >= 0; length--) {
            C2209x c2209x = f709e[length];
            if (localDate.compareTo(c2209x.f711b) >= 0) {
                return c2209x;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: r */
    public static C2209x m764r(int i) {
        int i2 = i + 1;
        if (i2 >= 0) {
            C2209x[] c2209xArr = f709e;
            if (i2 < c2209xArr.length) {
                return c2209xArr[i2];
            }
        }
        C2148b.m609b("Invalid era: ", i);
        return null;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new d0((byte) 5, this);
    }

    @Override // j$.time.chrono.InterfaceC2197l
    public final int getValue() {
        return this.f710a;
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: l */
    public final C2272s mo643l(InterfaceC2269p interfaceC2269p) {
        EnumC2254a enumC2254a = EnumC2254a.ERA;
        return interfaceC2269p == enumC2254a ? C2206u.f702c.mo743B(enumC2254a) : super.mo643l(interfaceC2269p);
    }

    /* JADX INFO: renamed from: q */
    public final C2209x m765q() {
        if (this == f709e[r0.length - 1]) {
            return null;
        }
        return m764r(this.f710a + 1);
    }

    public final String toString() {
        return this.f712c;
    }
}
