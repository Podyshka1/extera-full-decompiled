package j$.time;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.chrono.C1997r;
import j$.time.format.C2009a;
import j$.time.format.C2024p;
import j$.time.format.EnumC2031w;
import j$.time.temporal.AbstractC2064r;
import j$.time.temporal.C2066t;
import j$.time.temporal.C2067u;
import j$.time.temporal.EnumC2047a;
import j$.time.temporal.InterfaceC2059m;
import j$.time.temporal.InterfaceC2060n;
import j$.time.temporal.InterfaceC2061o;
import j$.time.temporal.InterfaceC2063q;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Locale;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: renamed from: j$.time.l */
/* JADX INFO: loaded from: classes2.dex */
public final class C2038l implements InterfaceC2060n, InterfaceC2061o, Comparable, Serializable {

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ int f570c = 0;
    private static final long serialVersionUID = -939150713474957432L;

    /* JADX INFO: renamed from: a */
    public final int f571a;

    /* JADX INFO: renamed from: b */
    public final int f572b;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        C2038l c2038l = (C2038l) obj;
        int i = this.f571a - c2038l.f571a;
        return i == 0 ? this.f572b - c2038l.f572b : i;
    }

    static {
        C2024p c2024p = new C2024p();
        c2024p.m603d("--");
        c2024p.m606g(EnumC2047a.MONTH_OF_YEAR, 2);
        c2024p.m602c(SignatureVisitor.SUPER);
        c2024p.m606g(EnumC2047a.DAY_OF_MONTH, 2);
        c2024p.m611l(Locale.getDefault(), EnumC2031w.SMART, null);
    }

    public C2038l(int i, int i2) {
        this.f571a = i;
        this.f572b = i2;
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: e */
    public final boolean mo455e(InterfaceC2063q interfaceC2063q) {
        return interfaceC2063q instanceof EnumC2047a ? interfaceC2063q == EnumC2047a.MONTH_OF_YEAR || interfaceC2063q == EnumC2047a.DAY_OF_MONTH : interfaceC2063q != null && interfaceC2063q.mo644h(this);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: j */
    public final C2067u mo457j(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q == EnumC2047a.MONTH_OF_YEAR) {
            return interfaceC2063q.mo646j();
        }
        if (interfaceC2063q != EnumC2047a.DAY_OF_MONTH) {
            return AbstractC2064r.m658d(this, interfaceC2063q);
        }
        EnumC2036j enumC2036jM631E = EnumC2036j.m631E(this.f571a);
        enumC2036jM631E.getClass();
        int i = AbstractC2035i.f566a[enumC2036jM631E.ordinal()];
        return C2067u.m660f(i != 1 ? (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31 : 28, EnumC2036j.m631E(this.f571a).m633D());
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: h */
    public final int mo456h(InterfaceC2063q interfaceC2063q) {
        return mo457j(interfaceC2063q).m661a(mo460w(interfaceC2063q), interfaceC2063q);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: w */
    public final long mo460w(InterfaceC2063q interfaceC2063q) {
        int i;
        if (!(interfaceC2063q instanceof EnumC2047a)) {
            return interfaceC2063q.mo647k(this);
        }
        int i2 = AbstractC2037k.f569a[((EnumC2047a) interfaceC2063q).ordinal()];
        if (i2 == 1) {
            i = this.f572b;
        } else {
            if (i2 != 2) {
                throw new C2066t(AbstractC1970c.m541a("Unsupported field: ", interfaceC2063q));
            }
            i = this.f571a;
        }
        return i;
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: k */
    public final Object mo458k(C2009a c2009a) {
        if (c2009a == AbstractC2064r.f611b) {
            return C1997r.f480c;
        }
        return AbstractC2064r.m657c(this, c2009a);
    }

    @Override // j$.time.temporal.InterfaceC2061o
    /* JADX INFO: renamed from: n */
    public final InterfaceC2059m mo459n(InterfaceC2059m interfaceC2059m) {
        if (!AbstractC1965a.m408N(interfaceC2059m).equals(C1997r.f480c)) {
            throw new C1969b("Adjustment only supported on ISO date-time");
        }
        InterfaceC2059m interfaceC2059mMo468c = interfaceC2059m.mo468c(this.f571a, EnumC2047a.MONTH_OF_YEAR);
        EnumC2047a enumC2047a = EnumC2047a.DAY_OF_MONTH;
        return interfaceC2059mMo468c.mo468c(Math.min(interfaceC2059mMo468c.mo457j(enumC2047a).f620d, this.f572b), enumC2047a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2038l) {
            C2038l c2038l = (C2038l) obj;
            if (this.f571a == c2038l.f571a && this.f572b == c2038l.f572b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f571a << 6) + this.f572b;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(10);
        sb.append("--");
        sb.append(this.f571a < 10 ? MVEL.VERSION_SUB : _UrlKt.FRAGMENT_ENCODE_SET);
        sb.append(this.f571a);
        sb.append(this.f572b < 10 ? "-0" : "-");
        sb.append(this.f572b);
        return sb.toString();
    }

    private Object writeReplace() {
        return new C2041o((byte) 13, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
