package j$.time.chrono;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.AbstractC1970c;
import j$.time.C2034h;
import j$.time.format.C2009a;
import j$.time.temporal.AbstractC2064r;
import j$.time.temporal.C2066t;
import j$.time.temporal.C2067u;
import j$.time.temporal.EnumC2047a;
import j$.time.temporal.EnumC2048b;
import j$.time.temporal.InterfaceC2059m;
import j$.time.temporal.InterfaceC2061o;
import j$.time.temporal.InterfaceC2063q;
import j$.time.temporal.InterfaceC2065s;
import java.io.Serializable;
import org.telegram.messenger.MediaDataController;

/* JADX INFO: renamed from: j$.time.chrono.d */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC1983d implements InterfaceC1981b, InterfaceC2059m, InterfaceC2061o, Serializable {
    private static final long serialVersionUID = 6282433883239719096L;

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: B */
    public final /* synthetic */ int compareTo(InterfaceC1981b interfaceC1981b) {
        return AbstractC1965a.m422e(this, interfaceC1981b);
    }

    /* JADX INFO: renamed from: E */
    public abstract InterfaceC1981b mo545E(long j);

    /* JADX INFO: renamed from: F */
    public abstract InterfaceC1981b mo546F(long j);

    /* JADX INFO: renamed from: G */
    public abstract InterfaceC1981b mo547G(long j);

    @Override // j$.time.chrono.InterfaceC1981b, j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: e */
    public /* synthetic */ boolean mo455e(InterfaceC2063q interfaceC2063q) {
        return AbstractC1965a.m435r(this, interfaceC2063q);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: h */
    public final /* synthetic */ int mo456h(InterfaceC2063q interfaceC2063q) {
        return AbstractC2064r.m655a(this, interfaceC2063q);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: j */
    public /* synthetic */ C2067u mo457j(InterfaceC2063q interfaceC2063q) {
        return AbstractC2064r.m658d(this, interfaceC2063q);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: k */
    public final /* synthetic */ Object mo458k(C2009a c2009a) {
        return AbstractC1965a.m437t(this, c2009a);
    }

    @Override // j$.time.temporal.InterfaceC2061o
    /* JADX INFO: renamed from: n */
    public final /* synthetic */ InterfaceC2059m mo459n(InterfaceC2059m interfaceC2059m) {
        return AbstractC1965a.m418a(this, interfaceC2059m);
    }

    /* JADX INFO: renamed from: v */
    public static InterfaceC1981b m561v(InterfaceC1990k interfaceC1990k, InterfaceC2059m interfaceC2059m) {
        InterfaceC1981b interfaceC1981b = (InterfaceC1981b) interfaceC2059m;
        if (interfaceC1990k.equals(interfaceC1981b.mo489a())) {
            return interfaceC1981b;
        }
        throw new ClassCastException("Chronology mismatch, expected: " + interfaceC1990k.getId() + ", actual: " + interfaceC1981b.mo489a().getId());
    }

    @Override // j$.time.chrono.InterfaceC1981b
    /* JADX INFO: renamed from: y */
    public ChronoLocalDateTime mo492y(C2034h c2034h) {
        return new C1985f(this, c2034h);
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: d */
    public InterfaceC1981b mo469d(long j, InterfaceC2065s interfaceC2065s) {
        boolean z = interfaceC2065s instanceof EnumC2048b;
        if (!z) {
            if (z) {
                throw new C2066t("Unsupported unit: " + interfaceC2065s);
            }
            return m561v(mo489a(), interfaceC2065s.mo651h(this, j));
        }
        switch (AbstractC1982c.f449a[((EnumC2048b) interfaceC2065s).ordinal()]) {
            case 1:
                return mo545E(j);
            case 2:
                return mo545E(AbstractC1965a.m409O(j, 7));
            case 3:
                return mo546F(j);
            case 4:
                return mo547G(j);
            case 5:
                return mo547G(AbstractC1965a.m409O(j, 10));
            case 6:
                return mo547G(AbstractC1965a.m409O(j, 100));
            case 7:
                return mo547G(AbstractC1965a.m409O(j, MediaDataController.MAX_STYLE_RUNS_COUNT));
            case 8:
                EnumC2047a enumC2047a = EnumC2047a.ERA;
                return mo468c(AbstractC1965a.m410P(mo460w(enumC2047a), j), (InterfaceC2063q) enumC2047a);
            default:
                throw new C2066t("Unsupported unit: " + interfaceC2065s);
        }
    }

    /* JADX INFO: renamed from: A */
    public InterfaceC1991l mo543A() {
        return mo489a().mo554p(AbstractC2064r.m655a(this, EnumC2047a.ERA));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof InterfaceC1981b) && AbstractC1965a.m422e(this, (InterfaceC1981b) obj) == 0;
    }

    @Override // j$.time.chrono.InterfaceC1981b
    public int hashCode() {
        long jMo491x = mo491x();
        return ((int) (jMo491x ^ (jMo491x >>> 32))) ^ mo489a().hashCode();
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public InterfaceC1981b mo470i(InterfaceC2061o interfaceC2061o) {
        return m561v(mo489a(), interfaceC2061o.mo459n(this));
    }

    @Override // j$.time.chrono.InterfaceC1981b
    public final String toString() {
        long jMo460w = mo460w(EnumC2047a.YEAR_OF_ERA);
        long jMo460w2 = mo460w(EnumC2047a.MONTH_OF_YEAR);
        long jMo460w3 = mo460w(EnumC2047a.DAY_OF_MONTH);
        StringBuilder sb = new StringBuilder(30);
        sb.append(mo489a().toString());
        sb.append(" ");
        sb.append(mo543A());
        sb.append(" ");
        sb.append(jMo460w);
        sb.append(jMo460w2 < 10 ? "-0" : "-");
        sb.append(jMo460w2);
        sb.append(jMo460w3 < 10 ? "-0" : "-");
        sb.append(jMo460w3);
        return sb.toString();
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: c */
    public InterfaceC1981b mo468c(long j, InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q instanceof EnumC2047a) {
            throw new C2066t(AbstractC1970c.m541a("Unsupported field: ", interfaceC2063q));
        }
        return m561v(mo489a(), interfaceC2063q.mo648n(this, j));
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public InterfaceC1981b mo471r(long j, InterfaceC2065s interfaceC2065s) {
        return m561v(mo489a(), AbstractC2064r.m656b(this, j, interfaceC2065s));
    }

    @Override // j$.time.chrono.InterfaceC1981b
    /* JADX INFO: renamed from: x */
    public long mo491x() {
        return mo460w(EnumC2047a.EPOCH_DAY);
    }
}
