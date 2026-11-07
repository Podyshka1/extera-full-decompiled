package j$.time.chrono;

import j$.nio.file.C2288b;
import j$.time.AbstractC2324b;
import j$.time.DateTimeException;
import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.temporal.C2410r;
import j$.time.temporal.C2411s;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2405m;
import j$.time.temporal.InterfaceC2407o;
import j$.time.temporal.InterfaceC2408p;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Arrays;

/* JADX INFO: renamed from: j$.time.chrono.p */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2341p extends AbstractC2329d {
    private static final long serialVersionUID = -5207853542612002020L;

    /* JADX INFO: renamed from: a */
    public final transient C2339n f696a;

    /* JADX INFO: renamed from: b */
    public final transient int f697b;

    /* JADX INFO: renamed from: c */
    public final transient int f698c;

    /* JADX INFO: renamed from: d */
    public final transient int f699d;

    public C2341p(C2339n c2339n, long j) {
        int i = (int) j;
        c2339n.m798Y();
        if (i < c2339n.f688e || i >= c2339n.f689f) {
            C2288b.m639h("Hijrah date out of range");
            throw null;
        }
        int iBinarySearch = Arrays.binarySearch(c2339n.f687d, i);
        iBinarySearch = iBinarySearch < 0 ? (-iBinarySearch) - 2 : iBinarySearch;
        int i2 = c2339n.f690g;
        int[] iArr = {(iBinarySearch + i2) / 12, ((i2 + iBinarySearch) % 12) + 1, (i - c2339n.f687d[iBinarySearch]) + 1};
        this.f696a = c2339n;
        this.f697b = iArr[0];
        this.f698c = iArr[1];
        this.f699d = iArr[2];
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new d0((byte) 6, this);
    }

    @Override // j$.time.chrono.InterfaceC2327b
    /* JADX INFO: renamed from: L */
    public final ChronoLocalDateTime mo684L(LocalTime localTime) {
        return new C2331f(this, localTime);
    }

    @Override // j$.time.chrono.InterfaceC2327b
    /* JADX INFO: renamed from: O */
    public final InterfaceC2337l mo685O() {
        return EnumC2342q.AH;
    }

    @Override // j$.time.chrono.AbstractC2329d
    /* JADX INFO: renamed from: R */
    public final InterfaceC2327b mo766R(long j) {
        return j == 0 ? this : a0(Math.addExact(this.f697b, (int) j), this.f698c, this.f699d);
    }

    @Override // j$.time.chrono.AbstractC2329d, j$.time.chrono.InterfaceC2327b
    /* JADX INFO: renamed from: T */
    public final InterfaceC2327b mo687T(InterfaceC2407o interfaceC2407o) {
        return (C2341p) super.mo687T(interfaceC2407o);
    }

    /* JADX INFO: renamed from: X */
    public final int m800X() {
        return this.f696a.d0(this.f697b, this.f698c - 1) + this.f699d;
    }

    @Override // j$.time.chrono.AbstractC2329d
    /* JADX INFO: renamed from: Y, reason: merged with bridge method [inline-methods] */
    public final C2341p mo764I(long j) {
        return new C2341p(this.f696a, toEpochDay() + j);
    }

    @Override // j$.time.chrono.AbstractC2329d
    /* JADX INFO: renamed from: Z, reason: merged with bridge method [inline-methods] */
    public final C2341p mo765K(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (((long) this.f697b) * 12) + ((long) (this.f698c - 1)) + j;
        C2339n c2339n = this.f696a;
        long jFloorDiv = Math.floorDiv(j2, 12L);
        int i = c2339n.f690g;
        if (jFloorDiv >= i / 12 && jFloorDiv <= (((c2339n.f687d.length - 1) + i) / 12) - 1) {
            return a0((int) jFloorDiv, ((int) Math.floorMod(j2, 12L)) + 1, this.f699d);
        }
        throw new DateTimeException("Invalid Hijrah year: " + jFloorDiv);
    }

    public final C2341p a0(int i, int i2, int i3) {
        int iB0 = this.f696a.b0(i, i2);
        if (i3 > iB0) {
            i3 = iB0;
        }
        return new C2341p(this.f696a, i, i2, i3);
    }

    @Override // j$.time.chrono.AbstractC2329d, j$.time.chrono.InterfaceC2327b, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b */
    public final InterfaceC2327b mo677b(long j, TemporalUnit temporalUnit) {
        return (C2341p) super.mo677b(j, temporalUnit);
    }

    @Override // j$.time.chrono.AbstractC2329d, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b0, reason: merged with bridge method [inline-methods] */
    public final C2341p mo676a(long j, InterfaceC2408p interfaceC2408p) {
        if (!(interfaceC2408p instanceof EnumC2393a)) {
            return (C2341p) super.mo676a(j, interfaceC2408p);
        }
        EnumC2393a enumC2393a = (EnumC2393a) interfaceC2408p;
        this.f696a.mo778B(enumC2393a).m886b(j, enumC2393a);
        int i = (int) j;
        switch (AbstractC2340o.f695a[enumC2393a.ordinal()]) {
            case 1:
                return a0(this.f697b, this.f698c, i);
            case 2:
                return mo764I(Math.min(i, this.f696a.d0(this.f697b, 12)) - m800X());
            case 3:
                return mo764I((j - mo556k(EnumC2393a.ALIGNED_WEEK_OF_MONTH)) * 7);
            case 4:
                return mo764I(j - ((long) (((int) Math.floorMod(toEpochDay() + 3, 7L)) + 1)));
            case 5:
                return mo764I(j - mo556k(EnumC2393a.ALIGNED_DAY_OF_WEEK_IN_MONTH));
            case 6:
                return mo764I(j - mo556k(EnumC2393a.ALIGNED_DAY_OF_WEEK_IN_YEAR));
            case 7:
                return new C2341p(this.f696a, j);
            case 8:
                return mo764I((j - mo556k(EnumC2393a.ALIGNED_WEEK_OF_YEAR)) * 7);
            case 9:
                return a0(this.f697b, i, this.f699d);
            case 10:
                return mo765K(j - (((((long) this.f697b) * 12) + ((long) this.f698c)) - 1));
            case 11:
                if (this.f697b < 1) {
                    i = 1 - i;
                }
                return a0(i, this.f698c, this.f699d);
            case 12:
                return a0(i, this.f698c, this.f699d);
            case 13:
                return a0(1 - this.f697b, this.f698c, this.f699d);
            default:
                throw new C2410r(AbstractC2324b.m753a("Unsupported field: ", interfaceC2408p));
        }
    }

    @Override // j$.time.chrono.AbstractC2329d, j$.time.chrono.InterfaceC2327b, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final InterfaceC2327b mo678c(long j, TemporalUnit temporalUnit) {
        return (C2341p) super.mo678c(j, temporalUnit);
    }

    @Override // j$.time.chrono.AbstractC2329d, j$.time.chrono.InterfaceC2327b
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2341p) {
            C2341p c2341p = (C2341p) obj;
            if (this.f697b == c2341p.f697b && this.f698c == c2341p.f698c && this.f699d == c2341p.f699d && this.f696a.equals(c2341p.f696a)) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.chrono.InterfaceC2327b
    /* JADX INFO: renamed from: f */
    public final InterfaceC2336k mo692f() {
        return this.f696a;
    }

    @Override // j$.time.chrono.AbstractC2329d, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: h */
    public final Temporal mo750j(LocalDate localDate) {
        return (C2341p) super.mo750j(localDate);
    }

    @Override // j$.time.chrono.AbstractC2329d, j$.time.chrono.InterfaceC2327b
    public final int hashCode() {
        int i = this.f697b;
        int i2 = this.f698c;
        int i3 = this.f699d;
        this.f696a.getClass();
        return ((i & (-2048)) ^ 2100100019) ^ (((i << 11) + (i2 << 6)) + i3);
    }

    @Override // j$.time.chrono.AbstractC2329d, j$.time.chrono.InterfaceC2327b
    /* JADX INFO: renamed from: j */
    public final InterfaceC2327b mo750j(InterfaceC2405m interfaceC2405m) {
        return (C2341p) super.mo750j(interfaceC2405m);
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: k */
    public final long mo556k(InterfaceC2408p interfaceC2408p) {
        int iM800X;
        int iFloorMod;
        if (!(interfaceC2408p instanceof EnumC2393a)) {
            return interfaceC2408p.mo875R(this);
        }
        switch (AbstractC2340o.f695a[((EnumC2393a) interfaceC2408p).ordinal()]) {
            case 1:
                iM800X = this.f699d;
                return iM800X;
            case 2:
                iM800X = m800X();
                return iM800X;
            case 3:
                iFloorMod = (this.f699d - 1) / 7;
                iM800X = iFloorMod + 1;
                return iM800X;
            case 4:
                iFloorMod = (int) Math.floorMod(toEpochDay() + 3, 7L);
                iM800X = iFloorMod + 1;
                return iM800X;
            case 5:
                iFloorMod = (this.f699d - 1) % 7;
                iM800X = iFloorMod + 1;
                return iM800X;
            case 6:
                iFloorMod = (m800X() - 1) % 7;
                iM800X = iFloorMod + 1;
                return iM800X;
            case 7:
                return toEpochDay();
            case 8:
                iFloorMod = (m800X() - 1) / 7;
                iM800X = iFloorMod + 1;
                return iM800X;
            case 9:
                iM800X = this.f698c;
                return iM800X;
            case 10:
                return ((((long) this.f697b) * 12) + ((long) this.f698c)) - 1;
            case 11:
                iM800X = this.f697b;
                return iM800X;
            case 12:
                iM800X = this.f697b;
                return iM800X;
            case 13:
                return this.f697b <= 1 ? 0 : 1;
            default:
                throw new C2410r(AbstractC2324b.m753a("Unsupported field: ", interfaceC2408p));
        }
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: l */
    public final C2411s mo667l(InterfaceC2408p interfaceC2408p) {
        if (!(interfaceC2408p instanceof EnumC2393a)) {
            return interfaceC2408p.mo873D(this);
        }
        if (!mo555i(interfaceC2408p)) {
            throw new C2410r(AbstractC2324b.m753a("Unsupported field: ", interfaceC2408p));
        }
        EnumC2393a enumC2393a = (EnumC2393a) interfaceC2408p;
        int i = AbstractC2340o.f695a[enumC2393a.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? this.f696a.mo778B(enumC2393a) : C2411s.m883f(1L, 5L) : C2411s.m883f(1L, this.f696a.d0(this.f697b, 12)) : C2411s.m883f(1L, this.f696a.b0(this.f697b, this.f698c));
    }

    @Override // j$.time.chrono.InterfaceC2327b
    public final long toEpochDay() {
        return this.f696a.a0(this.f697b, this.f698c, this.f699d);
    }

    @Override // j$.time.chrono.AbstractC2329d, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b */
    public final Temporal mo677b(long j, TemporalUnit temporalUnit) {
        return (C2341p) super.mo677b(j, temporalUnit);
    }

    @Override // j$.time.chrono.AbstractC2329d, j$.time.chrono.InterfaceC2327b, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final Temporal mo678c(long j, TemporalUnit temporalUnit) {
        return (C2341p) super.mo678c(j, temporalUnit);
    }

    public C2341p(C2339n c2339n, int i, int i2, int i3) {
        c2339n.a0(i, i2, i3);
        this.f696a = c2339n;
        this.f697b = i;
        this.f698c = i2;
        this.f699d = i3;
    }
}
