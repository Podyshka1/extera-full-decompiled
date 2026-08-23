package j$.time;

import j$.time.chrono.C2121r;
import j$.time.chrono.InterfaceC2114k;
import j$.time.format.C2149q;
import j$.time.format.EnumC2158z;
import j$.time.temporal.AbstractC2189q;
import j$.time.temporal.C2191s;
import j$.time.temporal.C2192t;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2184l;
import j$.time.temporal.InterfaceC2185m;
import j$.time.temporal.InterfaceC2188p;
import j$.time.temporal.Temporal;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Locale;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: renamed from: j$.time.n */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2166n implements InterfaceC2184l, InterfaceC2185m, Comparable, Serializable {

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ int f663c = 0;
    private static final long serialVersionUID = -939150713474957432L;

    /* JADX INFO: renamed from: a */
    public final int f664a;

    /* JADX INFO: renamed from: b */
    public final int f665b;

    static {
        C2149q c2149q = new C2149q();
        c2149q.m656d("--");
        c2149q.m659g(EnumC2173a.MONTH_OF_YEAR, 2);
        c2149q.m655c(SignatureVisitor.SUPER);
        c2149q.m659g(EnumC2173a.DAY_OF_MONTH, 2);
        c2149q.m664l(Locale.getDefault(), EnumC2158z.SMART, null);
    }

    public C2166n(int i, int i2) {
        this.f664a = i;
        this.f665b = i2;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2170r((byte) 13, this);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        C2166n c2166n = (C2166n) obj;
        int i = this.f664a - c2166n.f664a;
        return i == 0 ? this.f665b - c2166n.f665b : i;
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: d */
    public final Object mo482d(C2196x c2196x) {
        return c2196x == AbstractC2189q.f698b ? C2121r.f543c : super.mo482d(c2196x);
    }

    @Override // j$.time.temporal.InterfaceC2185m
    /* JADX INFO: renamed from: e */
    public final Temporal mo483e(Temporal temporal) {
        if (!InterfaceC2114k.m611s(temporal).equals(C2121r.f543c)) {
            C2159g.m684a("Adjustment only supported on ISO date-time");
            return null;
        }
        Temporal temporalMo496a = temporal.mo496a(this.f664a, EnumC2173a.MONTH_OF_YEAR);
        EnumC2173a enumC2173a = EnumC2173a.DAY_OF_MONTH;
        return temporalMo496a.mo496a(Math.min(temporalMo496a.mo487m(enumC2173a).f707d, this.f665b), enumC2173a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2166n) {
            C2166n c2166n = (C2166n) obj;
            if (this.f664a == c2166n.f664a && this.f665b == c2166n.f665b) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: g */
    public final int mo484g(InterfaceC2188p interfaceC2188p) {
        return mo487m(interfaceC2188p).m728a(mo486k(interfaceC2188p), interfaceC2188p);
    }

    public final int hashCode() {
        return (this.f664a << 6) + this.f665b;
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: i */
    public final boolean mo485i(InterfaceC2188p interfaceC2188p) {
        return interfaceC2188p instanceof EnumC2173a ? interfaceC2188p == EnumC2173a.MONTH_OF_YEAR || interfaceC2188p == EnumC2173a.DAY_OF_MONTH : interfaceC2188p != null && interfaceC2188p.mo721t(this);
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: k */
    public final long mo486k(InterfaceC2188p interfaceC2188p) {
        int i;
        if (!(interfaceC2188p instanceof EnumC2173a)) {
            return interfaceC2188p.mo717P(this);
        }
        int i2 = AbstractC2165m.f662a[((EnumC2173a) interfaceC2188p).ordinal()];
        if (i2 == 1) {
            i = this.f665b;
        } else {
            if (i2 != 2) {
                throw new C2191s(AbstractC2130d.m629a("Unsupported field: ", interfaceC2188p));
            }
            i = this.f664a;
        }
        return i;
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: m */
    public final C2192t mo487m(InterfaceC2188p interfaceC2188p) {
        if (interfaceC2188p == EnumC2173a.MONTH_OF_YEAR) {
            return interfaceC2188p.mo716I();
        }
        if (interfaceC2188p != EnumC2173a.DAY_OF_MONTH) {
            return super.mo487m(interfaceC2188p);
        }
        EnumC2164l enumC2164lM702I = EnumC2164l.m702I(this.f664a);
        enumC2164lM702I.getClass();
        int i = AbstractC2163k.f659a[enumC2164lM702I.ordinal()];
        return C2192t.m727g(i != 1 ? (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31 : 28, EnumC2164l.m702I(this.f664a).m704G());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(10);
        sb.append("--");
        sb.append(this.f664a < 10 ? MVEL.VERSION_SUB : _UrlKt.FRAGMENT_ENCODE_SET);
        sb.append(this.f664a);
        sb.append(this.f665b < 10 ? "-0" : "-");
        sb.append(this.f665b);
        return sb.toString();
    }
}
