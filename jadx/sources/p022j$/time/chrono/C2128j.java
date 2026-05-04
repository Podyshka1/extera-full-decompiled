package p022j$.time.chrono;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.C2173h;
import p022j$.time.Duration;
import p022j$.time.Instant;
import p022j$.time.LocalDate;
import p022j$.time.LocalDateTime;
import p022j$.time.ZoneId;
import p022j$.time.ZoneOffset;
import p022j$.time.format.C2148a;
import p022j$.time.temporal.AbstractC2203r;
import p022j$.time.temporal.C2206u;
import p022j$.time.temporal.EnumC2186a;
import p022j$.time.temporal.EnumC2187b;
import p022j$.time.temporal.InterfaceC2198m;
import p022j$.time.temporal.InterfaceC2202q;
import p022j$.time.temporal.InterfaceC2204s;
import p022j$.time.zone.C2209b;
import p022j$.time.zone.ZoneRules;
import p022j$.util.Objects;

/* JADX INFO: renamed from: j$.time.chrono.j */
/* JADX INFO: loaded from: classes2.dex */
public final class C2128j implements ChronoZonedDateTime, Serializable {
    private static final long serialVersionUID = -5261813987200935591L;

    /* JADX INFO: renamed from: a */
    public final transient C2124f f693a;

    /* JADX INFO: renamed from: b */
    public final transient ZoneOffset f694b;

    /* JADX INFO: renamed from: c */
    public final transient ZoneId f695c;

    @Override // p022j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: C */
    public final /* synthetic */ long mo654C() {
        return AbstractC2104a.m562y(this);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: h */
    public final /* synthetic */ int mo576h(InterfaceC2202q interfaceC2202q) {
        return AbstractC2104a.m550m(this, interfaceC2202q);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: k */
    public final /* synthetic */ Object mo578k(C2148a c2148a) {
        return AbstractC2104a.m559v(this, c2148a);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(ChronoZonedDateTime<?> chronoZonedDateTime) {
        return AbstractC2104a.m544g(this, chronoZonedDateTime);
    }

    /* JADX INFO: renamed from: v */
    public static C2128j m692v(ZoneId zoneId, ZoneOffset zoneOffset, C2124f c2124f) {
        Objects.requireNonNull(c2124f, "localDateTime");
        Objects.requireNonNull(zoneId, "zone");
        if (zoneId instanceof ZoneOffset) {
            return new C2128j(zoneId, (ZoneOffset) zoneId, c2124f);
        }
        ZoneRules rules = zoneId.getRules();
        LocalDateTime localDateTimeM614A = LocalDateTime.m614A(c2124f);
        List listM796f = rules.m796f(localDateTimeM614A);
        if (listM796f.size() == 1) {
            zoneOffset = (ZoneOffset) listM796f.get(0);
        } else if (listM796f.size() == 0) {
            C2209b c2209bM795e = rules.m795e(localDateTimeM614A);
            c2124f = c2124f.m687D(c2124f.f684a, 0L, 0L, Duration.ofSeconds(c2209bM795e.f875d.getTotalSeconds() - c2209bM795e.f874c.getTotalSeconds()).f633a, 0L);
            zoneOffset = c2209bM795e.f875d;
        } else {
            if (zoneOffset == null || !listM796f.contains(zoneOffset)) {
                zoneOffset = (ZoneOffset) listM796f.get(0);
            }
            c2124f = c2124f;
        }
        Objects.requireNonNull(zoneOffset, "offset");
        return new C2128j(zoneId, zoneOffset, c2124f);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: j */
    public final C2206u mo577j(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            if (interfaceC2202q != EnumC2186a.INSTANT_SECONDS && interfaceC2202q != EnumC2186a.OFFSET_SECONDS) {
                return ((C2124f) mo661o()).mo577j(interfaceC2202q);
            }
            return ((EnumC2186a) interfaceC2202q).f827b;
        }
        return interfaceC2202q.mo770i(this);
    }

    /* JADX INFO: renamed from: n */
    public static C2128j m691n(InterfaceC2129k interfaceC2129k, InterfaceC2198m interfaceC2198m) {
        C2128j c2128j = (C2128j) interfaceC2198m;
        if (interfaceC2129k.equals(c2128j.mo657a())) {
            return c2128j;
        }
        throw new ClassCastException("Chronology mismatch, required: " + interfaceC2129k.getId() + ", actual: " + c2128j.mo657a().getId());
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: w */
    public final long mo580w(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            int i = AbstractC2126h.f691a[((EnumC2186a) interfaceC2202q).ordinal()];
            if (i == 1) {
                return mo654C();
            }
            if (i == 2) {
                return mo660g().getTotalSeconds();
            }
            return ((C2124f) mo661o()).mo580w(interfaceC2202q);
        }
        return interfaceC2202q.mo772k(this);
    }

    public C2128j(ZoneId zoneId, ZoneOffset zoneOffset, C2124f c2124f) {
        this.f693a = (C2124f) Objects.requireNonNull(c2124f, "dateTime");
        this.f694b = (ZoneOffset) Objects.requireNonNull(zoneOffset, "offset");
        this.f695c = (ZoneId) Objects.requireNonNull(zoneId, "zone");
    }

    @Override // p022j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: g */
    public final ZoneOffset mo660g() {
        return this.f694b;
    }

    @Override // p022j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: f */
    public final InterfaceC2120b mo659f() {
        return ((C2124f) mo661o()).mo626f();
    }

    @Override // p022j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: b */
    public final C2173h mo658b() {
        return ((C2124f) mo661o()).mo625b();
    }

    public final int hashCode() {
        return (this.f693a.hashCode() ^ this.f694b.f662b) ^ Integer.rotateLeft(this.f695c.hashCode(), 3);
    }

    @Override // p022j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: o */
    public final ChronoLocalDateTime mo661o() {
        return this.f693a;
    }

    public final String toString() {
        String str = this.f693a.toString() + this.f694b.f663c;
        ZoneOffset zoneOffset = this.f694b;
        ZoneId zoneId = this.f695c;
        if (zoneOffset == zoneId) {
            return str;
        }
        return str + "[" + zoneId.toString() + "]";
    }

    @Override // p022j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: u */
    public final ZoneId mo663u() {
        return this.f695c;
    }

    @Override // p022j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: a */
    public final InterfaceC2129k mo657a() {
        return mo659f().mo610a();
    }

    @Override // p022j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: q */
    public final ChronoZonedDateTime mo662q(ZoneId zoneId) {
        return m692v(zoneId, this.f694b, this.f693a);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: e */
    public final boolean mo575e(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            return true;
        }
        return interfaceC2202q != null && interfaceC2202q.mo769h(this);
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: c */
    public final InterfaceC2198m mo588c(long j, InterfaceC2202q interfaceC2202q) {
        if (!(interfaceC2202q instanceof EnumC2186a)) {
            return m691n(mo657a(), interfaceC2202q.mo773n(this, j));
        }
        EnumC2186a enumC2186a = (EnumC2186a) interfaceC2202q;
        int i = AbstractC2127i.f692a[enumC2186a.ordinal()];
        if (i == 1) {
            return mo589d(j - AbstractC2104a.m562y(this), EnumC2187b.SECONDS);
        }
        if (i != 2) {
            return m692v(this.f695c, this.f694b, this.f693a.mo588c(j, interfaceC2202q));
        }
        ZoneOffset zoneOffsetM647H = ZoneOffset.m647H(enumC2186a.f827b.m786a(j, enumC2186a));
        C2124f c2124f = this.f693a;
        c2124f.getClass();
        Instant instantM584D = Instant.m584D(c2124f.m688E(zoneOffsetM647H), c2124f.mo625b().f800d);
        ZoneId zoneId = this.f695c;
        InterfaceC2129k interfaceC2129kMo657a = mo657a();
        ZoneOffset offset = zoneId.getRules().getOffset(instantM584D);
        Objects.requireNonNull(offset, "offset");
        return new C2128j(zoneId, offset, (C2124f) interfaceC2129kMo657a.mo683t(LocalDateTime.m616F(instantM584D.f636a, instantM584D.f637b, offset)));
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public final C2128j mo589d(long j, InterfaceC2204s interfaceC2204s) {
        if (interfaceC2204s instanceof EnumC2187b) {
            return m691n(mo657a(), this.f693a.mo589d(j, interfaceC2204s).mo579n(this));
        }
        return m691n(mo657a(), interfaceC2204s.mo776h(this, j));
    }

    private Object writeReplace() {
        return new C2113D((byte) 3, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ChronoZonedDateTime) && AbstractC2104a.m544g(this, (ChronoZonedDateTime) obj) == 0;
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: i */
    public final InterfaceC2198m mo590i(LocalDate localDate) {
        return m691n(mo657a(), localDate.mo579n(this));
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: r */
    public final InterfaceC2198m mo591r(long j, EnumC2187b enumC2187b) {
        return m691n(mo657a(), AbstractC2203r.m781b(this, j, enumC2187b));
    }

    @Override // p022j$.time.chrono.ChronoZonedDateTime
    public final Instant toInstant() {
        return Instant.m584D(mo654C(), mo658b().f800d);
    }
}
