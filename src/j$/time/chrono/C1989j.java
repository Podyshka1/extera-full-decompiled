package j$.time.chrono;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.C2034h;
import j$.time.Duration;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.format.C2009a;
import j$.time.temporal.AbstractC2064r;
import j$.time.temporal.C2067u;
import j$.time.temporal.EnumC2047a;
import j$.time.temporal.EnumC2048b;
import j$.time.temporal.InterfaceC2059m;
import j$.time.temporal.InterfaceC2063q;
import j$.time.temporal.InterfaceC2065s;
import j$.time.zone.C2070b;
import j$.time.zone.ZoneRules;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: renamed from: j$.time.chrono.j */
/* JADX INFO: loaded from: classes2.dex */
public final class C1989j implements ChronoZonedDateTime, Serializable {
    private static final long serialVersionUID = -5261813987200935591L;

    /* JADX INFO: renamed from: a */
    public final transient C1985f f460a;

    /* JADX INFO: renamed from: b */
    public final transient ZoneOffset f461b;

    /* JADX INFO: renamed from: c */
    public final transient ZoneId f462c;

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: C */
    public final /* synthetic */ long mo531C() {
        return AbstractC1965a.m442y(this);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: h */
    public final /* synthetic */ int mo456h(InterfaceC2063q interfaceC2063q) {
        return AbstractC1965a.m430m(this, interfaceC2063q);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: k */
    public final /* synthetic */ Object mo458k(C2009a c2009a) {
        return AbstractC1965a.m439v(this, c2009a);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(ChronoZonedDateTime<?> chronoZonedDateTime) {
        return AbstractC1965a.m424g(this, chronoZonedDateTime);
    }

    /* JADX INFO: renamed from: v */
    public static C1989j m569v(ZoneId zoneId, ZoneOffset zoneOffset, C1985f c1985f) {
        Objects.requireNonNull(c1985f, "localDateTime");
        Objects.requireNonNull(zoneId, "zone");
        if (zoneId instanceof ZoneOffset) {
            return new C1989j(zoneId, (ZoneOffset) zoneId, c1985f);
        }
        ZoneRules rules = zoneId.getRules();
        LocalDateTime localDateTimeM493A = LocalDateTime.m493A(c1985f);
        List listM671f = rules.m671f(localDateTimeM493A);
        if (listM671f.size() == 1) {
            zoneOffset = (ZoneOffset) listM671f.get(0);
        } else if (listM671f.size() == 0) {
            C2070b c2070bM670e = rules.m670e(localDateTimeM493A);
            c1985f = c1985f.m564D(c1985f.f451a, 0L, 0L, Duration.ofSeconds(c2070bM670e.f640d.getTotalSeconds() - c2070bM670e.f639c.getTotalSeconds()).f401a, 0L);
            zoneOffset = c2070bM670e.f640d;
        } else {
            if (zoneOffset == null || !listM671f.contains(zoneOffset)) {
                zoneOffset = (ZoneOffset) listM671f.get(0);
            }
            c1985f = c1985f;
        }
        Objects.requireNonNull(zoneOffset, "offset");
        return new C1989j(zoneId, zoneOffset, c1985f);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: j */
    public final C2067u mo457j(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q instanceof EnumC2047a) {
            if (interfaceC2063q != EnumC2047a.INSTANT_SECONDS && interfaceC2063q != EnumC2047a.OFFSET_SECONDS) {
                return ((C1985f) mo538o()).mo457j(interfaceC2063q);
            }
            return ((EnumC2047a) interfaceC2063q).f592b;
        }
        return interfaceC2063q.mo645i(this);
    }

    /* JADX INFO: renamed from: n */
    public static C1989j m568n(InterfaceC1990k interfaceC1990k, InterfaceC2059m interfaceC2059m) {
        C1989j c1989j = (C1989j) interfaceC2059m;
        if (interfaceC1990k.equals(c1989j.mo534a())) {
            return c1989j;
        }
        throw new ClassCastException("Chronology mismatch, required: " + interfaceC1990k.getId() + ", actual: " + c1989j.mo534a().getId());
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: w */
    public final long mo460w(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q instanceof EnumC2047a) {
            int i = AbstractC1987h.f458a[((EnumC2047a) interfaceC2063q).ordinal()];
            if (i == 1) {
                return mo531C();
            }
            if (i == 2) {
                return mo537g().getTotalSeconds();
            }
            return ((C1985f) mo538o()).mo460w(interfaceC2063q);
        }
        return interfaceC2063q.mo647k(this);
    }

    public C1989j(ZoneId zoneId, ZoneOffset zoneOffset, C1985f c1985f) {
        this.f460a = (C1985f) Objects.requireNonNull(c1985f, "dateTime");
        this.f461b = (ZoneOffset) Objects.requireNonNull(zoneOffset, "offset");
        this.f462c = (ZoneId) Objects.requireNonNull(zoneId, "zone");
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: g */
    public final ZoneOffset mo537g() {
        return this.f461b;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: f */
    public final InterfaceC1981b mo536f() {
        return ((C1985f) mo538o()).mo505f();
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: b */
    public final C2034h mo535b() {
        return ((C1985f) mo538o()).mo504b();
    }

    public final int hashCode() {
        return (this.f460a.hashCode() ^ this.f461b.f430b) ^ Integer.rotateLeft(this.f462c.hashCode(), 3);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: o */
    public final ChronoLocalDateTime mo538o() {
        return this.f460a;
    }

    public final String toString() {
        String str = this.f460a.toString() + this.f461b.f431c;
        ZoneOffset zoneOffset = this.f461b;
        ZoneId zoneId = this.f462c;
        if (zoneOffset == zoneId) {
            return str;
        }
        return str + "[" + zoneId.toString() + "]";
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: u */
    public final ZoneId mo540u() {
        return this.f462c;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: a */
    public final InterfaceC1990k mo534a() {
        return mo536f().mo489a();
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: q */
    public final ChronoZonedDateTime mo539q(ZoneId zoneId) {
        return m569v(zoneId, this.f461b, this.f460a);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: e */
    public final boolean mo455e(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q instanceof EnumC2047a) {
            return true;
        }
        return interfaceC2063q != null && interfaceC2063q.mo644h(this);
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: c */
    public final InterfaceC2059m mo468c(long j, InterfaceC2063q interfaceC2063q) {
        if (!(interfaceC2063q instanceof EnumC2047a)) {
            return m568n(mo534a(), interfaceC2063q.mo648n(this, j));
        }
        EnumC2047a enumC2047a = (EnumC2047a) interfaceC2063q;
        int i = AbstractC1988i.f459a[enumC2047a.ordinal()];
        if (i == 1) {
            return mo469d(j - AbstractC1965a.m442y(this), EnumC2048b.SECONDS);
        }
        if (i != 2) {
            return m569v(this.f462c, this.f461b, this.f460a.mo468c(j, interfaceC2063q));
        }
        ZoneOffset zoneOffsetM524H = ZoneOffset.m524H(enumC2047a.f592b.m661a(j, enumC2047a));
        C1985f c1985f = this.f460a;
        c1985f.getClass();
        Instant instantM464D = Instant.m464D(c1985f.m565E(zoneOffsetM524H), c1985f.mo504b().f565d);
        ZoneId zoneId = this.f462c;
        InterfaceC1990k interfaceC1990kMo534a = mo534a();
        ZoneOffset offset = zoneId.getRules().getOffset(instantM464D);
        Objects.requireNonNull(offset, "offset");
        return new C1989j(zoneId, offset, (C1985f) interfaceC1990kMo534a.mo560t(LocalDateTime.m495F(instantM464D.f404a, instantM464D.f405b, offset)));
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public final C1989j mo469d(long j, InterfaceC2065s interfaceC2065s) {
        if (interfaceC2065s instanceof EnumC2048b) {
            return m568n(mo534a(), this.f460a.mo469d(j, interfaceC2065s).mo459n(this));
        }
        return m568n(mo534a(), interfaceC2065s.mo651h(this, j));
    }

    private Object writeReplace() {
        return new C1974D((byte) 3, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ChronoZonedDateTime) && AbstractC1965a.m424g(this, (ChronoZonedDateTime) obj) == 0;
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: i */
    public final InterfaceC2059m mo470i(LocalDate localDate) {
        return m568n(mo534a(), localDate.mo459n(this));
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: r */
    public final InterfaceC2059m mo471r(long j, EnumC2048b enumC2048b) {
        return m568n(mo534a(), AbstractC2064r.m656b(this, j, enumC2048b));
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final Instant toInstant() {
        return Instant.m464D(mo531C(), mo535b().f565d);
    }
}
