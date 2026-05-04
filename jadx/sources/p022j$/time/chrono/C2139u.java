package p022j$.time.chrono;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import okhttp3.internal.http2.Http2Connection;
import p022j$.time.LocalDate;
import p022j$.time.temporal.C2205t;
import p022j$.time.temporal.C2206u;
import p022j$.time.temporal.EnumC2186a;
import p022j$.time.temporal.InterfaceC2199n;

/* JADX INFO: renamed from: j$.time.chrono.u */
/* JADX INFO: loaded from: classes2.dex */
public final class C2139u extends AbstractC2119a implements Serializable {

    /* JADX INFO: renamed from: c */
    public static final C2139u f718c = new C2139u();
    private static final long serialVersionUID = 459996390165777884L;

    @Override // p022j$.time.chrono.InterfaceC2129k
    public final String getId() {
        return "Japanese";
    }

    @Override // p022j$.time.chrono.InterfaceC2129k
    /* JADX INFO: renamed from: m */
    public final String mo676m() {
        return "japanese";
    }

    @Override // p022j$.time.chrono.InterfaceC2129k
    /* JADX INFO: renamed from: s */
    public final InterfaceC2120b mo678s(InterfaceC2199n interfaceC2199n) {
        if (interfaceC2199n instanceof C2141w) {
            return (C2141w) interfaceC2199n;
        }
        return new C2141w(LocalDate.m593D(interfaceC2199n));
    }

    private C2139u() {
    }

    @Override // p022j$.time.chrono.InterfaceC2129k
    /* JADX INFO: renamed from: p */
    public final InterfaceC2130l mo677p(int i) {
        return C2142x.m712s(i);
    }

    /* JADX INFO: renamed from: i */
    public final C2206u m707i(EnumC2186a enumC2186a) {
        switch (AbstractC2138t.f717a[enumC2186a.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                throw new C2205t("Unsupported field: " + enumC2186a);
            case 5:
                C2142x[] c2142xArr = C2142x.f725e;
                int year = c2142xArr[c2142xArr.length - 1].f727b.getYear();
                int year2 = Http2Connection.DEGRADED_PONG_TIMEOUT_NS - c2142xArr[c2142xArr.length - 1].f727b.getYear();
                int year3 = c2142xArr[0].f727b.getYear();
                int i = 1;
                while (true) {
                    C2142x[] c2142xArr2 = C2142x.f725e;
                    if (i >= c2142xArr2.length) {
                        return C2206u.m785f(year2, 999999999 - year);
                    }
                    C2142x c2142x = c2142xArr2[i];
                    year2 = Math.min(year2, (c2142x.f727b.getYear() - year3) + 1);
                    year3 = c2142x.f727b.getYear();
                    i++;
                }
                break;
            case 6:
                C2142x c2142x2 = C2142x.f724d;
                long jMin = EnumC2186a.DAY_OF_YEAR.f827b.f854c;
                for (C2142x c2142x3 : C2142x.f725e) {
                    jMin = Math.min(jMin, ((c2142x3.f727b.m602I() ? 366 : 365) - c2142x3.f727b.m600G()) + 1);
                    if (c2142x3.m713p() != null) {
                        jMin = Math.min(jMin, c2142x3.m713p().f727b.m600G() - 1);
                    }
                }
                return C2206u.m785f(jMin, EnumC2186a.DAY_OF_YEAR.f827b.f855d);
            case 7:
                return C2206u.m784e(C2141w.f720d.getYear(), 999999999L);
            case 8:
                long j = C2142x.f724d.f726a;
                C2142x[] c2142xArr3 = C2142x.f725e;
                return C2206u.m784e(j, c2142xArr3[c2142xArr3.length - 1].f726a);
            default:
                return enumC2186a.f827b;
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public Object writeReplace() {
        return new C2113D((byte) 1, this);
    }
}
