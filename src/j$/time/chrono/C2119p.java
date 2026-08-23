package j$.time.chrono;

import j$.time.AbstractC2130d;
import j$.time.C2103c;
import j$.time.C2159g;
import j$.time.C2162j;
import j$.time.LocalDate;
import j$.time.temporal.C2191s;
import j$.time.temporal.C2192t;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2185m;
import j$.time.temporal.InterfaceC2187o;
import j$.time.temporal.InterfaceC2188p;
import j$.time.temporal.InterfaceC2190r;
import j$.time.temporal.Temporal;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Arrays;

/* JADX INFO: renamed from: j$.time.chrono.p */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2119p extends AbstractC2107d {
    private static final long serialVersionUID = -5207853542612002020L;

    /* JADX INFO: renamed from: a */
    public final transient C2117n f538a;

    /* JADX INFO: renamed from: b */
    public final transient int f539b;

    /* JADX INFO: renamed from: c */
    public final transient int f540c;

    /* JADX INFO: renamed from: d */
    public final transient int f541d;

    public C2119p(C2117n c2117n, long j) {
        int i = (int) j;
        c2117n.m614X();
        if (i < c2117n.f530e || i >= c2117n.f531f) {
            C2159g.m684a("Hijrah date out of range");
            throw null;
        }
        int iBinarySearch = Arrays.binarySearch(c2117n.f529d, i);
        iBinarySearch = iBinarySearch < 0 ? (-iBinarySearch) - 2 : iBinarySearch;
        int i2 = c2117n.f532g;
        int[] iArr = {(iBinarySearch + i2) / 12, ((i2 + iBinarySearch) % 12) + 1, (i - c2117n.f529d[iBinarySearch]) + 1};
        this.f538a = c2117n;
        this.f539b = iArr[0];
        this.f540c = iArr[1];
        this.f541d = iArr[2];
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new d0((byte) 6, this);
    }

    @Override // j$.time.chrono.InterfaceC2105b
    /* JADX INFO: renamed from: J */
    public final long mo504J() {
        return this.f538a.m616Z(this.f539b, this.f540c, this.f541d);
    }

    @Override // j$.time.chrono.InterfaceC2105b
    /* JADX INFO: renamed from: K */
    public final ChronoLocalDateTime mo505K(C2162j c2162j) {
        return new C2109f(this, c2162j);
    }

    @Override // j$.time.chrono.InterfaceC2105b
    /* JADX INFO: renamed from: N */
    public final InterfaceC2115l mo506N() {
        return EnumC2120q.AH;
    }

    @Override // j$.time.chrono.AbstractC2107d
    /* JADX INFO: renamed from: P */
    public final InterfaceC2105b mo582P(long j) {
        return j == 0 ? this : m620Z(Math.addExact(this.f539b, (int) j), this.f540c, this.f541d);
    }

    @Override // j$.time.chrono.AbstractC2107d, j$.time.chrono.InterfaceC2105b
    /* JADX INFO: renamed from: R */
    public final InterfaceC2105b mo508R(InterfaceC2187o interfaceC2187o) {
        return (C2119p) super.mo508R(interfaceC2187o);
    }

    /* JADX INFO: renamed from: V */
    public final int m617V() {
        return this.f538a.c0(this.f539b, this.f540c - 1) + this.f541d;
    }

    @Override // j$.time.chrono.AbstractC2107d
    /* JADX INFO: renamed from: X, reason: merged with bridge method [inline-methods] */
    public final C2119p mo580G(long j) {
        return new C2119p(this.f538a, mo504J() + j);
    }

    @Override // j$.time.chrono.AbstractC2107d
    /* JADX INFO: renamed from: Y, reason: merged with bridge method [inline-methods] */
    public final C2119p mo581I(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (((long) this.f539b) * 12) + ((long) (this.f540c - 1)) + j;
        C2117n c2117n = this.f538a;
        long jFloorDiv = Math.floorDiv(j2, 12L);
        int i = c2117n.f532g;
        if (jFloorDiv >= i / 12 && jFloorDiv <= (((c2117n.f529d.length - 1) + i) / 12) - 1) {
            return m620Z((int) jFloorDiv, ((int) Math.floorMod(j2, 12L)) + 1, this.f541d);
        }
        throw new C2103c("Invalid Hijrah year: " + jFloorDiv);
    }

    /* JADX INFO: renamed from: Z */
    public final C2119p m620Z(int i, int i2, int i3) {
        int iA0 = this.f538a.a0(i, i2);
        if (i3 > iA0) {
            i3 = iA0;
        }
        return new C2119p(this.f538a, i, i2, i3);
    }

    @Override // j$.time.chrono.AbstractC2107d, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: a0, reason: merged with bridge method [inline-methods] */
    public final C2119p mo496a(long j, InterfaceC2188p interfaceC2188p) {
        if (!(interfaceC2188p instanceof EnumC2173a)) {
            return (C2119p) super.mo496a(j, interfaceC2188p);
        }
        EnumC2173a enumC2173a = (EnumC2173a) interfaceC2188p;
        this.f538a.mo604z(enumC2173a).m729b(j, enumC2173a);
        int i = (int) j;
        switch (AbstractC2118o.f537a[enumC2173a.ordinal()]) {
            case 1:
                return m620Z(this.f539b, this.f540c, i);
            case 2:
                return mo580G(Math.min(i, this.f538a.c0(this.f539b, 12)) - m617V());
            case 3:
                return mo580G((j - mo486k(EnumC2173a.ALIGNED_WEEK_OF_MONTH)) * 7);
            case 4:
                return mo580G(j - ((long) (((int) Math.floorMod(mo504J() + 3, 7L)) + 1)));
            case 5:
                return mo580G(j - mo486k(EnumC2173a.ALIGNED_DAY_OF_WEEK_IN_MONTH));
            case 6:
                return mo580G(j - mo486k(EnumC2173a.ALIGNED_DAY_OF_WEEK_IN_YEAR));
            case 7:
                return new C2119p(this.f538a, j);
            case 8:
                return mo580G((j - mo486k(EnumC2173a.ALIGNED_WEEK_OF_YEAR)) * 7);
            case 9:
                return m620Z(this.f539b, i, this.f541d);
            case 10:
                return mo581I(j - (((((long) this.f539b) * 12) + ((long) this.f540c)) - 1));
            case 11:
                if (this.f539b < 1) {
                    i = 1 - i;
                }
                return m620Z(i, this.f540c, this.f541d);
            case 12:
                return m620Z(i, this.f540c, this.f541d);
            case 13:
                return m620Z(1 - this.f539b, this.f540c, this.f541d);
            default:
                throw new C2191s(AbstractC2130d.m629a("Unsupported field: ", interfaceC2188p));
        }
    }

    @Override // j$.time.chrono.AbstractC2107d, j$.time.chrono.InterfaceC2105b, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b */
    public final InterfaceC2105b mo497b(long j, InterfaceC2190r interfaceC2190r) {
        return (C2119p) super.mo497b(j, interfaceC2190r);
    }

    @Override // j$.time.chrono.AbstractC2107d, j$.time.chrono.InterfaceC2105b, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final InterfaceC2105b mo498c(long j, InterfaceC2190r interfaceC2190r) {
        return (C2119p) super.mo498c(j, interfaceC2190r);
    }

    @Override // j$.time.chrono.AbstractC2107d, j$.time.chrono.InterfaceC2105b
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2119p) {
            C2119p c2119p = (C2119p) obj;
            if (this.f539b == c2119p.f539b && this.f540c == c2119p.f540c && this.f541d == c2119p.f541d && this.f538a.equals(c2119p.f538a)) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.chrono.InterfaceC2105b
    /* JADX INFO: renamed from: f */
    public final InterfaceC2114k mo514f() {
        return this.f538a;
    }

    @Override // j$.time.chrono.AbstractC2107d, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: h */
    public final Temporal mo559j(LocalDate localDate) {
        return (C2119p) super.mo559j(localDate);
    }

    @Override // j$.time.chrono.AbstractC2107d, j$.time.chrono.InterfaceC2105b
    public final int hashCode() {
        int i = this.f539b;
        int i2 = this.f540c;
        int i3 = this.f541d;
        this.f538a.getClass();
        return ((i & (-2048)) ^ 2100100019) ^ (((i << 11) + (i2 << 6)) + i3);
    }

    @Override // j$.time.chrono.AbstractC2107d, j$.time.chrono.InterfaceC2105b
    /* JADX INFO: renamed from: j */
    public final InterfaceC2105b mo559j(InterfaceC2185m interfaceC2185m) {
        return (C2119p) super.mo559j(interfaceC2185m);
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: k */
    public final long mo486k(InterfaceC2188p interfaceC2188p) {
        int iM617V;
        int iFloorMod;
        if (!(interfaceC2188p instanceof EnumC2173a)) {
            return interfaceC2188p.mo717P(this);
        }
        switch (AbstractC2118o.f537a[((EnumC2173a) interfaceC2188p).ordinal()]) {
            case 1:
                iM617V = this.f541d;
                return iM617V;
            case 2:
                iM617V = m617V();
                return iM617V;
            case 3:
                iFloorMod = (this.f541d - 1) / 7;
                iM617V = iFloorMod + 1;
                return iM617V;
            case 4:
                iFloorMod = (int) Math.floorMod(mo504J() + 3, 7L);
                iM617V = iFloorMod + 1;
                return iM617V;
            case 5:
                iFloorMod = (this.f541d - 1) % 7;
                iM617V = iFloorMod + 1;
                return iM617V;
            case 6:
                iFloorMod = (m617V() - 1) % 7;
                iM617V = iFloorMod + 1;
                return iM617V;
            case 7:
                return mo504J();
            case 8:
                iFloorMod = (m617V() - 1) / 7;
                iM617V = iFloorMod + 1;
                return iM617V;
            case 9:
                iM617V = this.f540c;
                return iM617V;
            case 10:
                return ((((long) this.f539b) * 12) + ((long) this.f540c)) - 1;
            case 11:
                iM617V = this.f539b;
                return iM617V;
            case 12:
                iM617V = this.f539b;
                return iM617V;
            case 13:
                return this.f539b <= 1 ? 0 : 1;
            default:
                throw new C2191s(AbstractC2130d.m629a("Unsupported field: ", interfaceC2188p));
        }
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: m */
    public final C2192t mo487m(InterfaceC2188p interfaceC2188p) {
        if (!(interfaceC2188p instanceof EnumC2173a)) {
            return interfaceC2188p.mo715B(this);
        }
        if (!mo485i(interfaceC2188p)) {
            throw new C2191s(AbstractC2130d.m629a("Unsupported field: ", interfaceC2188p));
        }
        EnumC2173a enumC2173a = (EnumC2173a) interfaceC2188p;
        int i = AbstractC2118o.f537a[enumC2173a.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? this.f538a.mo604z(enumC2173a) : C2192t.m726f(1L, 5L) : C2192t.m726f(1L, this.f538a.c0(this.f539b, 12)) : C2192t.m726f(1L, this.f538a.a0(this.f539b, this.f540c));
    }

    @Override // j$.time.chrono.AbstractC2107d, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b */
    public final Temporal mo497b(long j, InterfaceC2190r interfaceC2190r) {
        return (C2119p) super.mo497b(j, interfaceC2190r);
    }

    @Override // j$.time.chrono.AbstractC2107d, j$.time.chrono.InterfaceC2105b, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final Temporal mo498c(long j, InterfaceC2190r interfaceC2190r) {
        return (C2119p) super.mo498c(j, interfaceC2190r);
    }

    public C2119p(C2117n c2117n, int i, int i2, int i3) {
        c2117n.m616Z(i, i2, i3);
        this.f538a = c2117n;
        this.f539b = i;
        this.f540c = i2;
        this.f541d = i3;
    }
}
