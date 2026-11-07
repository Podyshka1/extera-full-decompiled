package j$.time.chrono;

import j$.nio.file.C2148b;
import j$.time.AbstractC2185c;
import j$.time.C2184b;
import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.temporal.C2271r;
import j$.time.temporal.C2272s;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2266m;
import j$.time.temporal.InterfaceC2268o;
import j$.time.temporal.InterfaceC2269p;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Arrays;

/* JADX INFO: renamed from: j$.time.chrono.p */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2201p extends AbstractC2189d {
    private static final long serialVersionUID = -5207853542612002020L;

    /* JADX INFO: renamed from: a */
    public final transient C2199n f694a;

    /* JADX INFO: renamed from: b */
    public final transient int f695b;

    /* JADX INFO: renamed from: c */
    public final transient int f696c;

    /* JADX INFO: renamed from: d */
    public final transient int f697d;

    public C2201p(C2199n c2199n, long j) {
        int i = (int) j;
        c2199n.a0();
        if (i < c2199n.f686e || i >= c2199n.f687f) {
            C2148b.m615h("Hijrah date out of range");
            throw null;
        }
        int iBinarySearch = Arrays.binarySearch(c2199n.f685d, i);
        iBinarySearch = iBinarySearch < 0 ? (-iBinarySearch) - 2 : iBinarySearch;
        int i2 = c2199n.f688g;
        int[] iArr = {(iBinarySearch + i2) / 12, ((i2 + iBinarySearch) % 12) + 1, (i - c2199n.f685d[iBinarySearch]) + 1};
        this.f694a = c2199n;
        this.f695b = iArr[0];
        this.f696c = iArr[1];
        this.f697d = iArr[2];
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new d0((byte) 6, this);
    }

    @Override // j$.time.chrono.InterfaceC2187b
    /* JADX INFO: renamed from: L */
    public final long mo660L() {
        return this.f694a.c0(this.f695b, this.f696c, this.f697d);
    }

    @Override // j$.time.chrono.InterfaceC2187b
    /* JADX INFO: renamed from: M */
    public final ChronoLocalDateTime mo661M(LocalTime localTime) {
        return new C2191f(this, localTime);
    }

    @Override // j$.time.chrono.InterfaceC2187b
    /* JADX INFO: renamed from: P */
    public final InterfaceC2197l mo662P() {
        return EnumC2202q.AH;
    }

    @Override // j$.time.chrono.AbstractC2189d
    /* JADX INFO: renamed from: S */
    public final InterfaceC2187b mo733S(long j) {
        return j == 0 ? this : c0(Math.addExact(this.f695b, (int) j), this.f696c, this.f697d);
    }

    @Override // j$.time.chrono.AbstractC2189d, j$.time.chrono.InterfaceC2187b
    /* JADX INFO: renamed from: U */
    public final InterfaceC2187b mo664U(InterfaceC2268o interfaceC2268o) {
        return (C2201p) super.mo664U(interfaceC2268o);
    }

    /* JADX INFO: renamed from: Y */
    public final int m761Y() {
        return this.f694a.f0(this.f695b, this.f696c - 1) + this.f697d;
    }

    @Override // j$.time.chrono.AbstractC2189d
    /* JADX INFO: renamed from: a0, reason: merged with bridge method [inline-methods] */
    public final C2201p mo731I(long j) {
        return new C2201p(this.f694a, mo660L() + j);
    }

    @Override // j$.time.chrono.AbstractC2189d, j$.time.chrono.InterfaceC2187b, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b */
    public final InterfaceC2187b mo653b(long j, TemporalUnit temporalUnit) {
        return (C2201p) super.mo653b(j, temporalUnit);
    }

    @Override // j$.time.chrono.AbstractC2189d
    /* JADX INFO: renamed from: b0, reason: merged with bridge method [inline-methods] */
    public final C2201p mo732K(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (((long) this.f695b) * 12) + ((long) (this.f696c - 1)) + j;
        C2199n c2199n = this.f694a;
        long jFloorDiv = Math.floorDiv(j2, 12L);
        int i = c2199n.f688g;
        if (jFloorDiv >= i / 12 && jFloorDiv <= (((c2199n.f685d.length - 1) + i) / 12) - 1) {
            return c0((int) jFloorDiv, ((int) Math.floorMod(j2, 12L)) + 1, this.f697d);
        }
        throw new C2184b("Invalid Hijrah year: " + jFloorDiv);
    }

    @Override // j$.time.chrono.AbstractC2189d, j$.time.chrono.InterfaceC2187b, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final InterfaceC2187b mo654c(long j, TemporalUnit temporalUnit) {
        return (C2201p) super.mo654c(j, temporalUnit);
    }

    public final C2201p c0(int i, int i2, int i3) {
        int iD0 = this.f694a.d0(i, i2);
        if (i3 > iD0) {
            i3 = iD0;
        }
        return new C2201p(this.f694a, i, i2, i3);
    }

    @Override // j$.time.chrono.AbstractC2189d, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: d0, reason: merged with bridge method [inline-methods] */
    public final C2201p mo652a(long j, InterfaceC2269p interfaceC2269p) {
        if (!(interfaceC2269p instanceof EnumC2254a)) {
            return (C2201p) super.mo652a(j, interfaceC2269p);
        }
        EnumC2254a enumC2254a = (EnumC2254a) interfaceC2269p;
        this.f694a.mo743B(enumC2254a).m838b(j, enumC2254a);
        int i = (int) j;
        switch (AbstractC2200o.f693a[enumC2254a.ordinal()]) {
            case 1:
                return c0(this.f695b, this.f696c, i);
            case 2:
                return mo731I(Math.min(i, this.f694a.f0(this.f695b, 12)) - m761Y());
            case 3:
                return mo731I((j - mo532k(EnumC2254a.ALIGNED_WEEK_OF_MONTH)) * 7);
            case 4:
                return mo731I(j - ((long) (((int) Math.floorMod(mo660L() + 3, 7L)) + 1)));
            case 5:
                return mo731I(j - mo532k(EnumC2254a.ALIGNED_DAY_OF_WEEK_IN_MONTH));
            case 6:
                return mo731I(j - mo532k(EnumC2254a.ALIGNED_DAY_OF_WEEK_IN_YEAR));
            case 7:
                return new C2201p(this.f694a, j);
            case 8:
                return mo731I((j - mo532k(EnumC2254a.ALIGNED_WEEK_OF_YEAR)) * 7);
            case 9:
                return c0(this.f695b, i, this.f697d);
            case 10:
                return mo732K(j - (((((long) this.f695b) * 12) + ((long) this.f696c)) - 1));
            case 11:
                if (this.f695b < 1) {
                    i = 1 - i;
                }
                return c0(i, this.f696c, this.f697d);
            case 12:
                return c0(i, this.f696c, this.f697d);
            case 13:
                return c0(1 - this.f695b, this.f696c, this.f697d);
            default:
                throw new C2271r(AbstractC2185c.m719a("Unsupported field: ", interfaceC2269p));
        }
    }

    @Override // j$.time.chrono.AbstractC2189d, j$.time.chrono.InterfaceC2187b
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2201p) {
            C2201p c2201p = (C2201p) obj;
            if (this.f695b == c2201p.f695b && this.f696c == c2201p.f696c && this.f697d == c2201p.f697d && this.f694a.equals(c2201p.f694a)) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.chrono.InterfaceC2187b
    /* JADX INFO: renamed from: f */
    public final InterfaceC2196k mo667f() {
        return this.f694a;
    }

    @Override // j$.time.chrono.AbstractC2189d, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: h */
    public final Temporal mo677j(LocalDate localDate) {
        return (C2201p) super.mo716j(localDate);
    }

    @Override // j$.time.chrono.AbstractC2189d, j$.time.chrono.InterfaceC2187b
    public final int hashCode() {
        int i = this.f695b;
        int i2 = this.f696c;
        int i3 = this.f697d;
        this.f694a.getClass();
        return ((i & (-2048)) ^ 2100100019) ^ (((i << 11) + (i2 << 6)) + i3);
    }

    @Override // j$.time.chrono.AbstractC2189d, j$.time.chrono.InterfaceC2187b
    /* JADX INFO: renamed from: j */
    public final InterfaceC2187b mo716j(InterfaceC2266m interfaceC2266m) {
        return (C2201p) super.mo716j(interfaceC2266m);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: k */
    public final long mo532k(InterfaceC2269p interfaceC2269p) {
        int iM761Y;
        int iFloorMod;
        if (!(interfaceC2269p instanceof EnumC2254a)) {
            return interfaceC2269p.mo831S(this);
        }
        switch (AbstractC2200o.f693a[((EnumC2254a) interfaceC2269p).ordinal()]) {
            case 1:
                iM761Y = this.f697d;
                return iM761Y;
            case 2:
                iM761Y = m761Y();
                return iM761Y;
            case 3:
                iFloorMod = (this.f697d - 1) / 7;
                iM761Y = iFloorMod + 1;
                return iM761Y;
            case 4:
                iFloorMod = (int) Math.floorMod(mo660L() + 3, 7L);
                iM761Y = iFloorMod + 1;
                return iM761Y;
            case 5:
                iFloorMod = (this.f697d - 1) % 7;
                iM761Y = iFloorMod + 1;
                return iM761Y;
            case 6:
                iFloorMod = (m761Y() - 1) % 7;
                iM761Y = iFloorMod + 1;
                return iM761Y;
            case 7:
                return mo660L();
            case 8:
                iFloorMod = (m761Y() - 1) / 7;
                iM761Y = iFloorMod + 1;
                return iM761Y;
            case 9:
                iM761Y = this.f696c;
                return iM761Y;
            case 10:
                return ((((long) this.f695b) * 12) + ((long) this.f696c)) - 1;
            case 11:
                iM761Y = this.f695b;
                return iM761Y;
            case 12:
                iM761Y = this.f695b;
                return iM761Y;
            case 13:
                return this.f695b <= 1 ? 0 : 1;
            default:
                throw new C2271r(AbstractC2185c.m719a("Unsupported field: ", interfaceC2269p));
        }
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: l */
    public final C2272s mo643l(InterfaceC2269p interfaceC2269p) {
        if (!(interfaceC2269p instanceof EnumC2254a)) {
            return interfaceC2269p.mo829D(this);
        }
        if (!mo531i(interfaceC2269p)) {
            throw new C2271r(AbstractC2185c.m719a("Unsupported field: ", interfaceC2269p));
        }
        EnumC2254a enumC2254a = (EnumC2254a) interfaceC2269p;
        int i = AbstractC2200o.f693a[enumC2254a.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? this.f694a.mo743B(enumC2254a) : C2272s.m835f(1L, 5L) : C2272s.m835f(1L, this.f694a.f0(this.f695b, 12)) : C2272s.m835f(1L, this.f694a.d0(this.f695b, this.f696c));
    }

    @Override // j$.time.chrono.AbstractC2189d, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b */
    public final Temporal mo653b(long j, TemporalUnit temporalUnit) {
        return (C2201p) super.mo653b(j, temporalUnit);
    }

    @Override // j$.time.chrono.AbstractC2189d, j$.time.chrono.InterfaceC2187b, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final Temporal mo654c(long j, TemporalUnit temporalUnit) {
        return (C2201p) super.mo654c(j, temporalUnit);
    }

    public C2201p(C2199n c2199n, int i, int i2, int i3) {
        c2199n.c0(i, i2, i3);
        this.f694a = c2199n;
        this.f695b = i;
        this.f696c = i2;
        this.f697d = i3;
    }
}
