package j$.time;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.format.C2009a;
import j$.time.temporal.AbstractC2064r;
import j$.time.temporal.C2067u;
import j$.time.temporal.EnumC2047a;
import j$.time.temporal.EnumC2048b;
import j$.time.temporal.InterfaceC2059m;
import j$.time.temporal.InterfaceC2061o;
import j$.time.temporal.InterfaceC2063q;
import j$.time.temporal.InterfaceC2065s;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: renamed from: j$.time.n */
/* JADX INFO: loaded from: classes2.dex */
public final class C2040n implements InterfaceC2059m, InterfaceC2061o, Comparable, Serializable {

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ int f574c = 0;
    private static final long serialVersionUID = 7264499704384272492L;

    /* JADX INFO: renamed from: a */
    public final C2034h f575a;

    /* JADX INFO: renamed from: b */
    public final ZoneOffset f576b;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        C2040n c2040n = (C2040n) obj;
        if (this.f576b.equals(c2040n.f576b)) {
            return this.f575a.compareTo(c2040n.f575a);
        }
        int iCompare = Long.compare(this.f575a.m625M() - (((long) this.f576b.getTotalSeconds()) * 1000000000), c2040n.f575a.m625M() - (((long) c2040n.f576b.getTotalSeconds()) * 1000000000));
        return iCompare == 0 ? this.f575a.compareTo(c2040n.f575a) : iCompare;
    }

    static {
        C2034h c2034h = C2034h.f558e;
        ZoneOffset zoneOffset = ZoneOffset.f429g;
        c2034h.getClass();
        new C2040n(c2034h, zoneOffset);
        C2034h c2034h2 = C2034h.f559f;
        ZoneOffset zoneOffset2 = ZoneOffset.f428f;
        c2034h2.getClass();
        new C2040n(c2034h2, zoneOffset2);
    }

    public C2040n(C2034h c2034h, ZoneOffset zoneOffset) {
        this.f575a = (C2034h) Objects.requireNonNull(c2034h, "time");
        this.f576b = (ZoneOffset) Objects.requireNonNull(zoneOffset, "offset");
    }

    /* JADX INFO: renamed from: A */
    public final C2040n m635A(C2034h c2034h, ZoneOffset zoneOffset) {
        return (this.f575a == c2034h && this.f576b.equals(zoneOffset)) ? this : new C2040n(c2034h, zoneOffset);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: e */
    public final boolean mo455e(InterfaceC2063q interfaceC2063q) {
        return interfaceC2063q instanceof EnumC2047a ? ((EnumC2047a) interfaceC2063q).m650v() || interfaceC2063q == EnumC2047a.OFFSET_SECONDS : interfaceC2063q != null && interfaceC2063q.mo644h(this);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: j */
    public final C2067u mo457j(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q instanceof EnumC2047a) {
            if (interfaceC2063q != EnumC2047a.OFFSET_SECONDS) {
                C2034h c2034h = this.f575a;
                c2034h.getClass();
                return AbstractC2064r.m658d(c2034h, interfaceC2063q);
            }
            return ((EnumC2047a) interfaceC2063q).f592b;
        }
        return interfaceC2063q.mo645i(this);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: h */
    public final int mo456h(InterfaceC2063q interfaceC2063q) {
        return AbstractC2064r.m655a(this, interfaceC2063q);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: w */
    public final long mo460w(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q instanceof EnumC2047a) {
            if (interfaceC2063q == EnumC2047a.OFFSET_SECONDS) {
                return this.f576b.getTotalSeconds();
            }
            return this.f575a.mo460w(interfaceC2063q);
        }
        return interfaceC2063q.mo647k(this);
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: i */
    public final InterfaceC2059m mo470i(LocalDate localDate) {
        localDate.getClass();
        return (C2040n) AbstractC1965a.m418a(localDate, this);
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: c */
    public final InterfaceC2059m mo468c(long j, InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q instanceof EnumC2047a) {
            if (interfaceC2063q == EnumC2047a.OFFSET_SECONDS) {
                EnumC2047a enumC2047a = (EnumC2047a) interfaceC2063q;
                return m635A(this.f575a, ZoneOffset.m524H(enumC2047a.f592b.m661a(j, enumC2047a)));
            }
            return m635A(this.f575a.mo468c(j, interfaceC2063q), this.f576b);
        }
        return (C2040n) interfaceC2063q.mo648n(this, j);
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public final C2040n mo469d(long j, InterfaceC2065s interfaceC2065s) {
        if (interfaceC2065s instanceof EnumC2048b) {
            return m635A(this.f575a.mo469d(j, interfaceC2065s), this.f576b);
        }
        return (C2040n) interfaceC2065s.mo651h(this, j);
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: r */
    public final InterfaceC2059m mo471r(long j, EnumC2048b enumC2048b) {
        return j == Long.MIN_VALUE ? mo469d(Long.MAX_VALUE, enumC2048b).mo469d(1L, enumC2048b) : mo469d(-j, enumC2048b);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: k */
    public final Object mo458k(C2009a c2009a) {
        if (c2009a == AbstractC2064r.f613d || c2009a == AbstractC2064r.f614e) {
            return this.f576b;
        }
        if (((c2009a == AbstractC2064r.f610a) || (c2009a == AbstractC2064r.f611b)) || c2009a == AbstractC2064r.f615f) {
            return null;
        }
        if (c2009a == AbstractC2064r.f616g) {
            return this.f575a;
        }
        if (c2009a == AbstractC2064r.f612c) {
            return EnumC2048b.NANOS;
        }
        return c2009a.m593a(this);
    }

    @Override // j$.time.temporal.InterfaceC2061o
    /* JADX INFO: renamed from: n */
    public final InterfaceC2059m mo459n(InterfaceC2059m interfaceC2059m) {
        return interfaceC2059m.mo468c(this.f575a.m625M(), EnumC2047a.NANO_OF_DAY).mo468c(this.f576b.getTotalSeconds(), EnumC2047a.OFFSET_SECONDS);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2040n) {
            C2040n c2040n = (C2040n) obj;
            if (this.f575a.equals(c2040n.f575a) && this.f576b.equals(c2040n.f576b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f575a.hashCode() ^ this.f576b.f430b;
    }

    public final String toString() {
        return this.f575a.toString() + this.f576b.f431c;
    }

    private Object writeReplace() {
        return new C2041o((byte) 9, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
