package j$.time.temporal;

import j$.time.AbstractC1970c;
import j$.time.C1969b;
import j$.time.format.C2009a;
import j$.util.Objects;

/* JADX INFO: renamed from: j$.time.temporal.r */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2064r {

    /* JADX INFO: renamed from: a */
    public static final C2009a f610a = new C2009a(1);

    /* JADX INFO: renamed from: b */
    public static final C2009a f611b = new C2009a(2);

    /* JADX INFO: renamed from: c */
    public static final C2009a f612c = new C2009a(3);

    /* JADX INFO: renamed from: d */
    public static final C2009a f613d = new C2009a(4);

    /* JADX INFO: renamed from: e */
    public static final C2009a f614e = new C2009a(5);

    /* JADX INFO: renamed from: f */
    public static final C2009a f615f = new C2009a(6);

    /* JADX INFO: renamed from: g */
    public static final C2009a f616g = new C2009a(7);

    /* JADX INFO: renamed from: d */
    public static C2067u m658d(InterfaceC2060n interfaceC2060n, InterfaceC2063q interfaceC2063q) {
        if (!(interfaceC2063q instanceof EnumC2047a)) {
            Objects.requireNonNull(interfaceC2063q, "field");
            return interfaceC2063q.mo645i(interfaceC2060n);
        }
        if (interfaceC2060n.mo455e(interfaceC2063q)) {
            return ((EnumC2047a) interfaceC2063q).f592b;
        }
        throw new C2066t(AbstractC1970c.m541a("Unsupported field: ", interfaceC2063q));
    }

    /* JADX INFO: renamed from: a */
    public static int m655a(InterfaceC2060n interfaceC2060n, InterfaceC2063q interfaceC2063q) {
        C2067u c2067uMo457j = interfaceC2060n.mo457j(interfaceC2063q);
        if (c2067uMo457j.f617a < -2147483648L || c2067uMo457j.f620d > 2147483647L) {
            throw new C2066t("Invalid field " + interfaceC2063q + " for get() method, use getLong() instead");
        }
        long jMo460w = interfaceC2060n.mo460w(interfaceC2063q);
        if (c2067uMo457j.m664d(jMo460w)) {
            return (int) jMo460w;
        }
        throw new C1969b("Invalid value for " + interfaceC2063q + " (valid values " + c2067uMo457j + "): " + jMo460w);
    }

    /* JADX INFO: renamed from: c */
    public static Object m657c(InterfaceC2060n interfaceC2060n, C2009a c2009a) {
        if (c2009a == f610a || c2009a == f611b || c2009a == f612c) {
            return null;
        }
        return c2009a.m593a(interfaceC2060n);
    }

    /* JADX INFO: renamed from: b */
    public static InterfaceC2059m m656b(InterfaceC2059m interfaceC2059m, long j, InterfaceC2065s interfaceC2065s) {
        long j2;
        if (j == Long.MIN_VALUE) {
            interfaceC2059m = interfaceC2059m.mo469d(Long.MAX_VALUE, interfaceC2065s);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return interfaceC2059m.mo469d(j2, interfaceC2065s);
    }
}
