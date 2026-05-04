package p022j$.time;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Locale;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;
import org.mvel2.asm.signature.SignatureVisitor;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.chrono.C2136r;
import p022j$.time.format.C2148a;
import p022j$.time.format.C2163p;
import p022j$.time.format.EnumC2170w;
import p022j$.time.temporal.AbstractC2203r;
import p022j$.time.temporal.C2205t;
import p022j$.time.temporal.C2206u;
import p022j$.time.temporal.EnumC2186a;
import p022j$.time.temporal.InterfaceC2198m;
import p022j$.time.temporal.InterfaceC2199n;
import p022j$.time.temporal.InterfaceC2200o;
import p022j$.time.temporal.InterfaceC2202q;

/* JADX INFO: renamed from: j$.time.l */
/* JADX INFO: loaded from: classes2.dex */
public final class C2177l implements InterfaceC2199n, InterfaceC2200o, Comparable, Serializable {

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ int f805c = 0;
    private static final long serialVersionUID = -939150713474957432L;

    /* JADX INFO: renamed from: a */
    public final int f806a;

    /* JADX INFO: renamed from: b */
    public final int f807b;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        C2177l c2177l = (C2177l) obj;
        int i = this.f806a - c2177l.f806a;
        return i == 0 ? this.f807b - c2177l.f807b : i;
    }

    static {
        C2163p c2163p = new C2163p();
        c2163p.m726d("--");
        c2163p.m729g(EnumC2186a.MONTH_OF_YEAR, 2);
        c2163p.m725c(SignatureVisitor.SUPER);
        c2163p.m729g(EnumC2186a.DAY_OF_MONTH, 2);
        c2163p.m734l(Locale.getDefault(), EnumC2170w.SMART, null);
    }

    public C2177l(int i, int i2) {
        this.f806a = i;
        this.f807b = i2;
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: e */
    public final boolean mo575e(InterfaceC2202q interfaceC2202q) {
        return interfaceC2202q instanceof EnumC2186a ? interfaceC2202q == EnumC2186a.MONTH_OF_YEAR || interfaceC2202q == EnumC2186a.DAY_OF_MONTH : interfaceC2202q != null && interfaceC2202q.mo769h(this);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: j */
    public final C2206u mo577j(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q == EnumC2186a.MONTH_OF_YEAR) {
            return interfaceC2202q.mo771j();
        }
        if (interfaceC2202q != EnumC2186a.DAY_OF_MONTH) {
            return AbstractC2203r.m783d(this, interfaceC2202q);
        }
        EnumC2175j enumC2175jM754E = EnumC2175j.m754E(this.f806a);
        enumC2175jM754E.getClass();
        int i = AbstractC2174i.f801a[enumC2175jM754E.ordinal()];
        return C2206u.m785f(i != 1 ? (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31 : 28, EnumC2175j.m754E(this.f806a).m756D());
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: h */
    public final int mo576h(InterfaceC2202q interfaceC2202q) {
        return mo577j(interfaceC2202q).m786a(mo580w(interfaceC2202q), interfaceC2202q);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: w */
    public final long mo580w(InterfaceC2202q interfaceC2202q) {
        int i;
        if (!(interfaceC2202q instanceof EnumC2186a)) {
            return interfaceC2202q.mo772k(this);
        }
        int i2 = AbstractC2176k.f804a[((EnumC2186a) interfaceC2202q).ordinal()];
        if (i2 == 1) {
            i = this.f807b;
        } else {
            if (i2 != 2) {
                throw new C2205t(AbstractC2109c.m664a("Unsupported field: ", interfaceC2202q));
            }
            i = this.f806a;
        }
        return i;
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: k */
    public final Object mo578k(C2148a c2148a) {
        if (c2148a == AbstractC2203r.f846b) {
            return C2136r.f714c;
        }
        return AbstractC2203r.m782c(this, c2148a);
    }

    @Override // p022j$.time.temporal.InterfaceC2200o
    /* JADX INFO: renamed from: n */
    public final InterfaceC2198m mo579n(InterfaceC2198m interfaceC2198m) {
        if (!AbstractC2104a.m528N(interfaceC2198m).equals(C2136r.f714c)) {
            throw new C2108b("Adjustment only supported on ISO date-time");
        }
        InterfaceC2198m interfaceC2198mMo588c = interfaceC2198m.mo588c(this.f806a, EnumC2186a.MONTH_OF_YEAR);
        EnumC2186a enumC2186a = EnumC2186a.DAY_OF_MONTH;
        return interfaceC2198mMo588c.mo588c(Math.min(interfaceC2198mMo588c.mo577j(enumC2186a).f855d, this.f807b), enumC2186a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2177l) {
            C2177l c2177l = (C2177l) obj;
            if (this.f806a == c2177l.f806a && this.f807b == c2177l.f807b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f806a << 6) + this.f807b;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(10);
        sb.append("--");
        sb.append(this.f806a < 10 ? MVEL.VERSION_SUB : _UrlKt.FRAGMENT_ENCODE_SET);
        sb.append(this.f806a);
        sb.append(this.f807b < 10 ? "-0" : "-");
        sb.append(this.f807b);
        return sb.toString();
    }

    private Object writeReplace() {
        return new C2180o((byte) 13, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
