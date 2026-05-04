package p022j$.time.temporal;

import p022j$.time.AbstractC2109c;
import p022j$.time.C2108b;
import p022j$.time.format.C2148a;
import p022j$.util.Objects;

/* JADX INFO: renamed from: j$.time.temporal.r */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2203r {

    /* JADX INFO: renamed from: a */
    public static final C2148a f845a = new C2148a(1);

    /* JADX INFO: renamed from: b */
    public static final C2148a f846b = new C2148a(2);

    /* JADX INFO: renamed from: c */
    public static final C2148a f847c = new C2148a(3);

    /* JADX INFO: renamed from: d */
    public static final C2148a f848d = new C2148a(4);

    /* JADX INFO: renamed from: e */
    public static final C2148a f849e = new C2148a(5);

    /* JADX INFO: renamed from: f */
    public static final C2148a f850f = new C2148a(6);

    /* JADX INFO: renamed from: g */
    public static final C2148a f851g = new C2148a(7);

    /* JADX INFO: renamed from: d */
    public static C2206u m783d(InterfaceC2199n interfaceC2199n, InterfaceC2202q interfaceC2202q) {
        if (!(interfaceC2202q instanceof EnumC2186a)) {
            Objects.requireNonNull(interfaceC2202q, "field");
            return interfaceC2202q.mo770i(interfaceC2199n);
        }
        if (interfaceC2199n.mo575e(interfaceC2202q)) {
            return ((EnumC2186a) interfaceC2202q).f827b;
        }
        throw new C2205t(AbstractC2109c.m664a("Unsupported field: ", interfaceC2202q));
    }

    /* JADX INFO: renamed from: a */
    public static int m780a(InterfaceC2199n interfaceC2199n, InterfaceC2202q interfaceC2202q) {
        C2206u c2206uMo577j = interfaceC2199n.mo577j(interfaceC2202q);
        if (c2206uMo577j.f852a < -2147483648L || c2206uMo577j.f855d > 2147483647L) {
            throw new C2205t("Invalid field " + interfaceC2202q + " for get() method, use getLong() instead");
        }
        long jMo580w = interfaceC2199n.mo580w(interfaceC2202q);
        if (c2206uMo577j.m789d(jMo580w)) {
            return (int) jMo580w;
        }
        throw new C2108b("Invalid value for " + interfaceC2202q + " (valid values " + c2206uMo577j + "): " + jMo580w);
    }

    /* JADX INFO: renamed from: c */
    public static Object m782c(InterfaceC2199n interfaceC2199n, C2148a c2148a) {
        if (c2148a == f845a || c2148a == f846b || c2148a == f847c) {
            return null;
        }
        return c2148a.m716a(interfaceC2199n);
    }

    /* JADX INFO: renamed from: b */
    public static InterfaceC2198m m781b(InterfaceC2198m interfaceC2198m, long j, InterfaceC2204s interfaceC2204s) {
        long j2;
        if (j == Long.MIN_VALUE) {
            interfaceC2198m = interfaceC2198m.mo589d(Long.MAX_VALUE, interfaceC2204s);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return interfaceC2198m.mo589d(j2, interfaceC2204s);
    }
}
