package j$.time.chrono;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.AbstractC1970c;
import j$.time.C2034h;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.ZoneOffset;
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

/* JADX INFO: renamed from: j$.time.chrono.f */
/* JADX INFO: loaded from: classes2.dex */
public final class C1985f implements ChronoLocalDateTime, InterfaceC2059m, InterfaceC2061o, Serializable {
    private static final long serialVersionUID = 4556003607393004514L;

    /* JADX INFO: renamed from: a */
    public final transient InterfaceC1981b f451a;

    /* JADX INFO: renamed from: b */
    public final transient C2034h f452b;

    /* JADX INFO: renamed from: E */
    public final /* synthetic */ long m565E(ZoneOffset zoneOffset) {
        return AbstractC1965a.m441x(this, zoneOffset);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: k */
    public final /* synthetic */ Object mo458k(C2009a c2009a) {
        return AbstractC1965a.m438u(this, c2009a);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: z */
    public final /* synthetic */ int compareTo(ChronoLocalDateTime chronoLocalDateTime) {
        return AbstractC1965a.m423f(this, chronoLocalDateTime);
    }

    /* JADX INFO: renamed from: v */
    public static C1985f m562v(InterfaceC1990k interfaceC1990k, InterfaceC2059m interfaceC2059m) {
        C1985f c1985f = (C1985f) interfaceC2059m;
        if (interfaceC1990k.equals(c1985f.f451a.mo489a())) {
            return c1985f;
        }
        throw new ClassCastException("Chronology mismatch, required: " + interfaceC1990k.getId() + ", actual: " + c1985f.f451a.mo489a().getId());
    }

    public C1985f(InterfaceC1981b interfaceC1981b, C2034h c2034h) {
        Objects.requireNonNull(interfaceC1981b, "date");
        Objects.requireNonNull(c2034h, "time");
        this.f451a = interfaceC1981b;
        this.f452b = c2034h;
    }

    /* JADX INFO: renamed from: G */
    public final C1985f m567G(InterfaceC2059m interfaceC2059m, C2034h c2034h) {
        InterfaceC1981b interfaceC1981b = this.f451a;
        return (interfaceC1981b == interfaceC2059m && this.f452b == c2034h) ? this : new C1985f(AbstractC1983d.m561v(interfaceC1981b.mo489a(), interfaceC2059m), c2034h);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: a */
    public final InterfaceC1990k mo503a() {
        return this.f451a.mo489a();
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: f */
    public final InterfaceC1981b mo505f() {
        return this.f451a;
    }

    public final int hashCode() {
        return this.f451a.hashCode() ^ this.f452b.hashCode();
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: r */
    public final InterfaceC2059m mo471r(long j, EnumC2048b enumC2048b) {
        return m562v(this.f451a.mo489a(), AbstractC2064r.m656b(this, j, enumC2048b));
    }

    public final String toString() {
        return this.f451a.toString() + "T" + this.f452b.toString();
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: b */
    public final C2034h mo504b() {
        return this.f452b;
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: e */
    public final boolean mo455e(InterfaceC2063q interfaceC2063q) {
        if (!(interfaceC2063q instanceof EnumC2047a)) {
            return interfaceC2063q != null && interfaceC2063q.mo644h(this);
        }
        EnumC2047a enumC2047a = (EnumC2047a) interfaceC2063q;
        return enumC2047a.isDateBased() || enumC2047a.m650v();
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: j */
    public final C2067u mo457j(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q instanceof EnumC2047a) {
            if (!((EnumC2047a) interfaceC2063q).m650v()) {
                return this.f451a.mo457j(interfaceC2063q);
            }
            C2034h c2034h = this.f452b;
            c2034h.getClass();
            return AbstractC2064r.m658d(c2034h, interfaceC2063q);
        }
        return interfaceC2063q.mo645i(this);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: h */
    public final int mo456h(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q instanceof EnumC2047a) {
            return ((EnumC2047a) interfaceC2063q).m650v() ? this.f452b.mo456h(interfaceC2063q) : this.f451a.mo456h(interfaceC2063q);
        }
        return mo457j(interfaceC2063q).m661a(mo460w(interfaceC2063q), interfaceC2063q);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: w */
    public final long mo460w(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q instanceof EnumC2047a) {
            return ((EnumC2047a) interfaceC2063q).m650v() ? this.f452b.mo460w(interfaceC2063q) : this.f451a.mo460w(interfaceC2063q);
        }
        return interfaceC2063q.mo647k(this);
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: i */
    public final InterfaceC2059m mo470i(LocalDate localDate) {
        if (AbstractC1970c.m542b(localDate)) {
            return m567G(localDate, this.f452b);
        }
        InterfaceC1990k interfaceC1990kMo489a = this.f451a.mo489a();
        localDate.getClass();
        return m562v(interfaceC1990kMo489a, (C1985f) AbstractC1965a.m418a(localDate, this));
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public final C1985f mo468c(long j, InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q instanceof EnumC2047a) {
            if (((EnumC2047a) interfaceC2063q).m650v()) {
                return m567G(this.f451a, this.f452b.mo468c(j, interfaceC2063q));
            }
            return m567G(this.f451a.mo468c(j, interfaceC2063q), this.f452b);
        }
        return m562v(this.f451a.mo489a(), interfaceC2063q.mo648n(this, j));
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public final C1985f mo469d(long j, InterfaceC2065s interfaceC2065s) {
        if (!(interfaceC2065s instanceof EnumC2048b)) {
            return m562v(this.f451a.mo489a(), interfaceC2065s.mo651h(this, j));
        }
        switch (AbstractC1984e.f450a[((EnumC2048b) interfaceC2065s).ordinal()]) {
            case 1:
                return m564D(this.f451a, 0L, 0L, 0L, j);
            case 2:
                C1985f c1985fM567G = m567G(this.f451a.mo469d(j / 86400000000L, (InterfaceC2065s) EnumC2048b.DAYS), this.f452b);
                return c1985fM567G.m564D(c1985fM567G.f451a, 0L, 0L, 0L, (j % 86400000000L) * 1000);
            case 3:
                C1985f c1985fM567G2 = m567G(this.f451a.mo469d(j / 86400000, (InterfaceC2065s) EnumC2048b.DAYS), this.f452b);
                return c1985fM567G2.m564D(c1985fM567G2.f451a, 0L, 0L, 0L, (j % 86400000) * 1000000);
            case 4:
                return m564D(this.f451a, 0L, 0L, j, 0L);
            case 5:
                return m564D(this.f451a, 0L, j, 0L, 0L);
            case 6:
                return m564D(this.f451a, j, 0L, 0L, 0L);
            case 7:
                C1985f c1985fM567G3 = m567G(this.f451a.mo469d(j / 256, (InterfaceC2065s) EnumC2048b.DAYS), this.f452b);
                return c1985fM567G3.m564D(c1985fM567G3.f451a, (j % 256) * 12, 0L, 0L, 0L);
            default:
                return m567G(this.f451a.mo469d(j, interfaceC2065s), this.f452b);
        }
    }

    /* JADX INFO: renamed from: D */
    public final C1985f m564D(InterfaceC1981b interfaceC1981b, long j, long j2, long j3, long j4) {
        if ((j | j2 | j3 | j4) == 0) {
            return m567G(interfaceC1981b, this.f452b);
        }
        long j5 = j / 24;
        long j6 = ((j % 24) * 3600000000000L) + ((j2 % 1440) * 60000000000L) + ((j3 % 86400) * 1000000000) + (j4 % 86400000000000L);
        long jM625M = this.f452b.m625M();
        long j7 = j6 + jM625M;
        long jM414T = AbstractC1965a.m414T(j7, 86400000000000L) + j5 + (j2 / 1440) + (j3 / 86400) + (j4 / 86400000000000L);
        long jM413S = AbstractC1965a.m413S(j7, 86400000000000L);
        return m567G(interfaceC1981b.mo469d(jM414T, (InterfaceC2065s) EnumC2048b.DAYS), jM413S == jM625M ? this.f452b : C2034h.m617F(jM413S));
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: l */
    public final ChronoZonedDateTime mo506l(ZoneOffset zoneOffset) {
        return C1989j.m569v(zoneOffset, null, this);
    }

    @Override // j$.time.temporal.InterfaceC2061o
    /* JADX INFO: renamed from: n */
    public final InterfaceC2059m mo459n(InterfaceC2059m interfaceC2059m) {
        return interfaceC2059m.mo468c(mo505f().mo491x(), EnumC2047a.EPOCH_DAY).mo468c(mo504b().m625M(), EnumC2047a.NANO_OF_DAY);
    }

    private Object writeReplace() {
        return new C1974D((byte) 2, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ChronoLocalDateTime) && AbstractC1965a.m423f(this, (ChronoLocalDateTime) obj) == 0;
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public final Instant toInstant(ZoneOffset zoneOffset) {
        return Instant.m464D(m565E(zoneOffset), mo504b().f565d);
    }
}
