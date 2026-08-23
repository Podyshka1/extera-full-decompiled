package p022j$.time;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.format.C2148a;
import p022j$.time.temporal.AbstractC2203r;
import p022j$.time.temporal.C2206u;
import p022j$.time.temporal.EnumC2186a;
import p022j$.time.temporal.EnumC2187b;
import p022j$.time.temporal.InterfaceC2198m;
import p022j$.time.temporal.InterfaceC2200o;
import p022j$.time.temporal.InterfaceC2202q;
import p022j$.time.temporal.InterfaceC2204s;
import p022j$.util.Objects;

/* JADX INFO: renamed from: j$.time.n */
/* JADX INFO: loaded from: classes2.dex */
public final class C2179n implements InterfaceC2198m, InterfaceC2200o, Comparable, Serializable {

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ int f809c = 0;
    private static final long serialVersionUID = 7264499704384272492L;

    /* JADX INFO: renamed from: a */
    public final C2173h f810a;

    /* JADX INFO: renamed from: b */
    public final ZoneOffset f811b;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        C2179n c2179n = (C2179n) obj;
        if (this.f811b.equals(c2179n.f811b)) {
            return this.f810a.compareTo(c2179n.f810a);
        }
        int iCompare = Long.compare(this.f810a.m748M() - (((long) this.f811b.getTotalSeconds()) * 1000000000), c2179n.f810a.m748M() - (((long) c2179n.f811b.getTotalSeconds()) * 1000000000));
        return iCompare == 0 ? this.f810a.compareTo(c2179n.f810a) : iCompare;
    }

    static {
        C2173h c2173h = C2173h.f793e;
        ZoneOffset zoneOffset = ZoneOffset.f661g;
        c2173h.getClass();
        new C2179n(c2173h, zoneOffset);
        C2173h c2173h2 = C2173h.f794f;
        ZoneOffset zoneOffset2 = ZoneOffset.f660f;
        c2173h2.getClass();
        new C2179n(c2173h2, zoneOffset2);
    }

    public C2179n(C2173h c2173h, ZoneOffset zoneOffset) {
        this.f810a = (C2173h) Objects.requireNonNull(c2173h, "time");
        this.f811b = (ZoneOffset) Objects.requireNonNull(zoneOffset, "offset");
    }

    /* JADX INFO: renamed from: A */
    public final C2179n m758A(C2173h c2173h, ZoneOffset zoneOffset) {
        return (this.f810a == c2173h && this.f811b.equals(zoneOffset)) ? this : new C2179n(c2173h, zoneOffset);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: e */
    public final boolean mo575e(InterfaceC2202q interfaceC2202q) {
        return interfaceC2202q instanceof EnumC2186a ? ((EnumC2186a) interfaceC2202q).m775v() || interfaceC2202q == EnumC2186a.OFFSET_SECONDS : interfaceC2202q != null && interfaceC2202q.mo769h(this);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: j */
    public final C2206u mo577j(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            if (interfaceC2202q != EnumC2186a.OFFSET_SECONDS) {
                C2173h c2173h = this.f810a;
                c2173h.getClass();
                return AbstractC2203r.m783d(c2173h, interfaceC2202q);
            }
            return ((EnumC2186a) interfaceC2202q).f827b;
        }
        return interfaceC2202q.mo770i(this);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: h */
    public final int mo576h(InterfaceC2202q interfaceC2202q) {
        return AbstractC2203r.m780a(this, interfaceC2202q);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: w */
    public final long mo580w(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            if (interfaceC2202q == EnumC2186a.OFFSET_SECONDS) {
                return this.f811b.getTotalSeconds();
            }
            return this.f810a.mo580w(interfaceC2202q);
        }
        return interfaceC2202q.mo772k(this);
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: i */
    public final InterfaceC2198m mo590i(LocalDate localDate) {
        localDate.getClass();
        return (C2179n) AbstractC2104a.m538a(localDate, this);
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: c */
    public final InterfaceC2198m mo588c(long j, InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            if (interfaceC2202q == EnumC2186a.OFFSET_SECONDS) {
                EnumC2186a enumC2186a = (EnumC2186a) interfaceC2202q;
                return m758A(this.f810a, ZoneOffset.m647H(enumC2186a.f827b.m786a(j, enumC2186a)));
            }
            return m758A(this.f810a.mo588c(j, interfaceC2202q), this.f811b);
        }
        return (C2179n) interfaceC2202q.mo773n(this, j);
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public final C2179n mo589d(long j, InterfaceC2204s interfaceC2204s) {
        if (interfaceC2204s instanceof EnumC2187b) {
            return m758A(this.f810a.mo589d(j, interfaceC2204s), this.f811b);
        }
        return (C2179n) interfaceC2204s.mo776h(this, j);
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: r */
    public final InterfaceC2198m mo591r(long j, EnumC2187b enumC2187b) {
        return j == Long.MIN_VALUE ? mo589d(Long.MAX_VALUE, enumC2187b).mo589d(1L, enumC2187b) : mo589d(-j, enumC2187b);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: k */
    public final Object mo578k(C2148a c2148a) {
        if (c2148a == AbstractC2203r.f848d || c2148a == AbstractC2203r.f849e) {
            return this.f811b;
        }
        if (((c2148a == AbstractC2203r.f845a) || (c2148a == AbstractC2203r.f846b)) || c2148a == AbstractC2203r.f850f) {
            return null;
        }
        if (c2148a == AbstractC2203r.f851g) {
            return this.f810a;
        }
        if (c2148a == AbstractC2203r.f847c) {
            return EnumC2187b.NANOS;
        }
        return c2148a.m716a(this);
    }

    @Override // p022j$.time.temporal.InterfaceC2200o
    /* JADX INFO: renamed from: n */
    public final InterfaceC2198m mo579n(InterfaceC2198m interfaceC2198m) {
        return interfaceC2198m.mo588c(this.f810a.m748M(), EnumC2186a.NANO_OF_DAY).mo588c(this.f811b.getTotalSeconds(), EnumC2186a.OFFSET_SECONDS);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2179n) {
            C2179n c2179n = (C2179n) obj;
            if (this.f810a.equals(c2179n.f810a) && this.f811b.equals(c2179n.f811b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f810a.hashCode() ^ this.f811b.f662b;
    }

    public final String toString() {
        return this.f810a.toString() + this.f811b.f663c;
    }

    private Object writeReplace() {
        return new C2180o((byte) 9, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
