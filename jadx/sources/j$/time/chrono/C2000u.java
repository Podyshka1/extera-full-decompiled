package j$.time.chrono;

import j$.time.LocalDate;
import j$.time.temporal.C2066t;
import j$.time.temporal.C2067u;
import j$.time.temporal.EnumC2047a;
import j$.time.temporal.InterfaceC2060n;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import okhttp3.internal.http2.Http2Connection;

/* JADX INFO: renamed from: j$.time.chrono.u */
/* JADX INFO: loaded from: classes2.dex */
public final class C2000u extends AbstractC1980a implements Serializable {

    /* JADX INFO: renamed from: c */
    public static final C2000u f483c = new C2000u();
    private static final long serialVersionUID = 459996390165777884L;

    @Override // j$.time.chrono.InterfaceC1990k
    public final String getId() {
        return "Japanese";
    }

    @Override // j$.time.chrono.InterfaceC1990k
    /* JADX INFO: renamed from: m */
    public final String mo553m() {
        return "japanese";
    }

    @Override // j$.time.chrono.InterfaceC1990k
    /* JADX INFO: renamed from: s */
    public final InterfaceC1981b mo555s(InterfaceC2060n interfaceC2060n) {
        if (interfaceC2060n instanceof C2002w) {
            return (C2002w) interfaceC2060n;
        }
        return new C2002w(LocalDate.m473D(interfaceC2060n));
    }

    private C2000u() {
    }

    @Override // j$.time.chrono.InterfaceC1990k
    /* JADX INFO: renamed from: p */
    public final InterfaceC1991l mo554p(int i) {
        return C2003x.m589s(i);
    }

    /* JADX INFO: renamed from: i */
    public final C2067u m584i(EnumC2047a enumC2047a) {
        switch (AbstractC1999t.f482a[enumC2047a.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                throw new C2066t("Unsupported field: " + enumC2047a);
            case 5:
                C2003x[] c2003xArr = C2003x.f490e;
                int year = c2003xArr[c2003xArr.length - 1].f492b.getYear();
                int year2 = Http2Connection.DEGRADED_PONG_TIMEOUT_NS - c2003xArr[c2003xArr.length - 1].f492b.getYear();
                int year3 = c2003xArr[0].f492b.getYear();
                int i = 1;
                while (true) {
                    C2003x[] c2003xArr2 = C2003x.f490e;
                    if (i >= c2003xArr2.length) {
                        return C2067u.m660f(year2, 999999999 - year);
                    }
                    C2003x c2003x = c2003xArr2[i];
                    year2 = Math.min(year2, (c2003x.f492b.getYear() - year3) + 1);
                    year3 = c2003x.f492b.getYear();
                    i++;
                }
                break;
            case 6:
                C2003x c2003x2 = C2003x.f489d;
                long jMin = EnumC2047a.DAY_OF_YEAR.f592b.f619c;
                for (C2003x c2003x3 : C2003x.f490e) {
                    jMin = Math.min(jMin, ((c2003x3.f492b.m481I() ? 366 : 365) - c2003x3.f492b.m479G()) + 1);
                    if (c2003x3.m590p() != null) {
                        jMin = Math.min(jMin, c2003x3.m590p().f492b.m479G() - 1);
                    }
                }
                return C2067u.m660f(jMin, EnumC2047a.DAY_OF_YEAR.f592b.f620d);
            case 7:
                return C2067u.m659e(C2002w.f485d.getYear(), 999999999L);
            case 8:
                long j = C2003x.f489d.f491a;
                C2003x[] c2003xArr3 = C2003x.f490e;
                return C2067u.m659e(j, c2003xArr3[c2003xArr3.length - 1].f491a);
            default:
                return enumC2047a.f592b;
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public Object writeReplace() {
        return new C1974D((byte) 1, this);
    }
}
