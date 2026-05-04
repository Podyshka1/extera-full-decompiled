package j$.time.chrono;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.AbstractC1970c;
import j$.time.C1969b;
import j$.time.LocalDate;
import j$.time.format.C2009a;
import j$.time.temporal.AbstractC2064r;
import j$.time.temporal.C2067u;
import j$.time.temporal.EnumC2047a;
import j$.time.temporal.InterfaceC2059m;
import j$.time.temporal.InterfaceC2063q;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: renamed from: j$.time.chrono.x */
/* JADX INFO: loaded from: classes2.dex */
public final class C2003x implements InterfaceC1991l, Serializable {

    /* JADX INFO: renamed from: d */
    public static final C2003x f489d;

    /* JADX INFO: renamed from: e */
    public static final C2003x[] f490e;
    private static final long serialVersionUID = 1466499369062886794L;

    /* JADX INFO: renamed from: a */
    public final transient int f491a;

    /* JADX INFO: renamed from: b */
    public final transient LocalDate f492b;

    /* JADX INFO: renamed from: c */
    public final transient String f493c;

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ boolean mo455e(InterfaceC2063q interfaceC2063q) {
        return AbstractC1965a.m436s(this, interfaceC2063q);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: h */
    public final /* synthetic */ int mo456h(InterfaceC2063q interfaceC2063q) {
        return AbstractC1965a.m431n(this, interfaceC2063q);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: k */
    public final /* synthetic */ Object mo458k(C2009a c2009a) {
        return AbstractC1965a.m440w(this, c2009a);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: w */
    public final /* synthetic */ long mo460w(InterfaceC2063q interfaceC2063q) {
        return AbstractC1965a.m433p(this, interfaceC2063q);
    }

    static {
        C2003x c2003x = new C2003x(-1, LocalDate.of(1868, 1, 1), "Meiji");
        f489d = c2003x;
        f490e = new C2003x[]{c2003x, new C2003x(0, LocalDate.of(1912, 7, 30), "Taisho"), new C2003x(1, LocalDate.of(1926, 12, 25), "Showa"), new C2003x(2, LocalDate.of(1989, 1, 8), "Heisei"), new C2003x(3, LocalDate.of(2019, 5, 1), "Reiwa")};
    }

    /* JADX INFO: renamed from: p */
    public final C2003x m590p() {
        if (this == f490e[r0.length - 1]) {
            return null;
        }
        return m589s(this.f491a + 1);
    }

    public C2003x(int i, LocalDate localDate, String str) {
        this.f491a = i;
        this.f492b = localDate;
        this.f493c = str;
    }

    /* JADX INFO: renamed from: s */
    public static C2003x m589s(int i) {
        int i2 = i + 1;
        if (i2 >= 0) {
            C2003x[] c2003xArr = f490e;
            if (i2 < c2003xArr.length) {
                return c2003xArr[i2];
            }
        }
        throw new C1969b("Invalid era: " + i);
    }

    @Override // j$.time.temporal.InterfaceC2061o
    /* JADX INFO: renamed from: n */
    public final InterfaceC2059m mo459n(InterfaceC2059m interfaceC2059m) {
        return interfaceC2059m.mo468c(getValue(), EnumC2047a.ERA);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001f  */
    /* JADX INFO: renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static C2003x m588m(LocalDate localDate) {
        boolean z;
        LocalDate localDate2 = C2002w.f485d;
        if (AbstractC1970c.m542b(localDate2)) {
            localDate.getClass();
            z = localDate.m490v(localDate2) < 0;
        } else if (localDate.mo491x() < localDate2.mo491x()) {
        }
        if (z) {
            throw new C1969b("JapaneseDate before Meiji 6 are not supported");
        }
        for (int length = f490e.length - 1; length >= 0; length--) {
            C2003x c2003x = f490e[length];
            if (localDate.compareTo(c2003x.f492b) >= 0) {
                return c2003x;
            }
        }
        return null;
    }

    @Override // j$.time.chrono.InterfaceC1991l
    public final int getValue() {
        return this.f491a;
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: j */
    public final C2067u mo457j(InterfaceC2063q interfaceC2063q) {
        EnumC2047a enumC2047a = EnumC2047a.ERA;
        if (interfaceC2063q != enumC2047a) {
            return AbstractC2064r.m658d(this, interfaceC2063q);
        }
        return C2000u.f483c.m584i(enumC2047a);
    }

    public final String toString() {
        return this.f493c;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C1974D((byte) 5, this);
    }
}
