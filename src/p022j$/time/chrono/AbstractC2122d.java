package p022j$.time.chrono;

import java.io.Serializable;
import org.telegram.messenger.MediaDataController;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.AbstractC2109c;
import p022j$.time.C2173h;
import p022j$.time.format.C2148a;
import p022j$.time.temporal.AbstractC2203r;
import p022j$.time.temporal.C2205t;
import p022j$.time.temporal.C2206u;
import p022j$.time.temporal.EnumC2186a;
import p022j$.time.temporal.EnumC2187b;
import p022j$.time.temporal.InterfaceC2198m;
import p022j$.time.temporal.InterfaceC2200o;
import p022j$.time.temporal.InterfaceC2202q;
import p022j$.time.temporal.InterfaceC2204s;

/* JADX INFO: renamed from: j$.time.chrono.d */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2122d implements InterfaceC2120b, InterfaceC2198m, InterfaceC2200o, Serializable {
    private static final long serialVersionUID = 6282433883239719096L;

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: B */
    public final /* synthetic */ int compareTo(InterfaceC2120b interfaceC2120b) {
        return AbstractC2104a.m542e(this, interfaceC2120b);
    }

    /* JADX INFO: renamed from: E */
    public abstract InterfaceC2120b mo668E(long j);

    /* JADX INFO: renamed from: F */
    public abstract InterfaceC2120b mo669F(long j);

    /* JADX INFO: renamed from: G */
    public abstract InterfaceC2120b mo670G(long j);

    @Override // p022j$.time.chrono.InterfaceC2120b, p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: e */
    public /* synthetic */ boolean mo575e(InterfaceC2202q interfaceC2202q) {
        return AbstractC2104a.m555r(this, interfaceC2202q);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: h */
    public final /* synthetic */ int mo576h(InterfaceC2202q interfaceC2202q) {
        return AbstractC2203r.m780a(this, interfaceC2202q);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: j */
    public /* synthetic */ C2206u mo577j(InterfaceC2202q interfaceC2202q) {
        return AbstractC2203r.m783d(this, interfaceC2202q);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: k */
    public final /* synthetic */ Object mo578k(C2148a c2148a) {
        return AbstractC2104a.m557t(this, c2148a);
    }

    @Override // p022j$.time.temporal.InterfaceC2200o
    /* JADX INFO: renamed from: n */
    public final /* synthetic */ InterfaceC2198m mo579n(InterfaceC2198m interfaceC2198m) {
        return AbstractC2104a.m538a(this, interfaceC2198m);
    }

    /* JADX INFO: renamed from: v */
    public static InterfaceC2120b m684v(InterfaceC2129k interfaceC2129k, InterfaceC2198m interfaceC2198m) {
        InterfaceC2120b interfaceC2120b = (InterfaceC2120b) interfaceC2198m;
        if (interfaceC2129k.equals(interfaceC2120b.mo610a())) {
            return interfaceC2120b;
        }
        throw new ClassCastException("Chronology mismatch, expected: " + interfaceC2129k.getId() + ", actual: " + interfaceC2120b.mo610a().getId());
    }

    @Override // p022j$.time.chrono.InterfaceC2120b
    /* JADX INFO: renamed from: y */
    public ChronoLocalDateTime mo613y(C2173h c2173h) {
        return new C2124f(this, c2173h);
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: d */
    public InterfaceC2120b mo589d(long j, InterfaceC2204s interfaceC2204s) {
        boolean z = interfaceC2204s instanceof EnumC2187b;
        if (!z) {
            if (z) {
                throw new C2205t("Unsupported unit: " + interfaceC2204s);
            }
            return m684v(mo610a(), interfaceC2204s.mo776h(this, j));
        }
        switch (AbstractC2121c.f682a[((EnumC2187b) interfaceC2204s).ordinal()]) {
            case 1:
                return mo668E(j);
            case 2:
                return mo668E(AbstractC2104a.m529O(j, 7));
            case 3:
                return mo669F(j);
            case 4:
                return mo670G(j);
            case 5:
                return mo670G(AbstractC2104a.m529O(j, 10));
            case 6:
                return mo670G(AbstractC2104a.m529O(j, 100));
            case 7:
                return mo670G(AbstractC2104a.m529O(j, MediaDataController.MAX_STYLE_RUNS_COUNT));
            case 8:
                EnumC2186a enumC2186a = EnumC2186a.ERA;
                return mo588c(AbstractC2104a.m530P(mo580w(enumC2186a), j), (InterfaceC2202q) enumC2186a);
            default:
                throw new C2205t("Unsupported unit: " + interfaceC2204s);
        }
    }

    /* JADX INFO: renamed from: A */
    public InterfaceC2130l mo666A() {
        return mo610a().mo677p(AbstractC2203r.m780a(this, EnumC2186a.ERA));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof InterfaceC2120b) && AbstractC2104a.m542e(this, (InterfaceC2120b) obj) == 0;
    }

    @Override // p022j$.time.chrono.InterfaceC2120b
    public int hashCode() {
        long jMo612x = mo612x();
        return ((int) (jMo612x ^ (jMo612x >>> 32))) ^ mo610a().hashCode();
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public InterfaceC2120b mo590i(InterfaceC2200o interfaceC2200o) {
        return m684v(mo610a(), interfaceC2200o.mo579n(this));
    }

    @Override // p022j$.time.chrono.InterfaceC2120b
    public final String toString() {
        long jMo580w = mo580w(EnumC2186a.YEAR_OF_ERA);
        long jMo580w2 = mo580w(EnumC2186a.MONTH_OF_YEAR);
        long jMo580w3 = mo580w(EnumC2186a.DAY_OF_MONTH);
        StringBuilder sb = new StringBuilder(30);
        sb.append(mo610a().toString());
        sb.append(" ");
        sb.append(mo666A());
        sb.append(" ");
        sb.append(jMo580w);
        sb.append(jMo580w2 < 10 ? "-0" : "-");
        sb.append(jMo580w2);
        sb.append(jMo580w3 < 10 ? "-0" : "-");
        sb.append(jMo580w3);
        return sb.toString();
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: c */
    public InterfaceC2120b mo588c(long j, InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            throw new C2205t(AbstractC2109c.m664a("Unsupported field: ", interfaceC2202q));
        }
        return m684v(mo610a(), interfaceC2202q.mo773n(this, j));
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public InterfaceC2120b mo591r(long j, InterfaceC2204s interfaceC2204s) {
        return m684v(mo610a(), AbstractC2203r.m781b(this, j, interfaceC2204s));
    }

    @Override // p022j$.time.chrono.InterfaceC2120b
    /* JADX INFO: renamed from: x */
    public long mo612x() {
        return mo580w(EnumC2186a.EPOCH_DAY);
    }
}
