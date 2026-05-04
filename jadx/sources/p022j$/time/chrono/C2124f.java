package p022j$.time.chrono;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.AbstractC2109c;
import p022j$.time.C2173h;
import p022j$.time.Instant;
import p022j$.time.LocalDate;
import p022j$.time.ZoneOffset;
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

/* JADX INFO: renamed from: j$.time.chrono.f */
/* JADX INFO: loaded from: classes2.dex */
public final class C2124f implements ChronoLocalDateTime, InterfaceC2198m, InterfaceC2200o, Serializable {
    private static final long serialVersionUID = 4556003607393004514L;

    /* JADX INFO: renamed from: a */
    public final transient InterfaceC2120b f684a;

    /* JADX INFO: renamed from: b */
    public final transient C2173h f685b;

    /* JADX INFO: renamed from: E */
    public final /* synthetic */ long m688E(ZoneOffset zoneOffset) {
        return AbstractC2104a.m561x(this, zoneOffset);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: k */
    public final /* synthetic */ Object mo578k(C2148a c2148a) {
        return AbstractC2104a.m558u(this, c2148a);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: z */
    public final /* synthetic */ int compareTo(ChronoLocalDateTime chronoLocalDateTime) {
        return AbstractC2104a.m543f(this, chronoLocalDateTime);
    }

    /* JADX INFO: renamed from: v */
    public static C2124f m685v(InterfaceC2129k interfaceC2129k, InterfaceC2198m interfaceC2198m) {
        C2124f c2124f = (C2124f) interfaceC2198m;
        if (interfaceC2129k.equals(c2124f.f684a.mo610a())) {
            return c2124f;
        }
        throw new ClassCastException("Chronology mismatch, required: " + interfaceC2129k.getId() + ", actual: " + c2124f.f684a.mo610a().getId());
    }

    public C2124f(InterfaceC2120b interfaceC2120b, C2173h c2173h) {
        Objects.requireNonNull(interfaceC2120b, "date");
        Objects.requireNonNull(c2173h, "time");
        this.f684a = interfaceC2120b;
        this.f685b = c2173h;
    }

    /* JADX INFO: renamed from: G */
    public final C2124f m690G(InterfaceC2198m interfaceC2198m, C2173h c2173h) {
        InterfaceC2120b interfaceC2120b = this.f684a;
        return (interfaceC2120b == interfaceC2198m && this.f685b == c2173h) ? this : new C2124f(AbstractC2122d.m684v(interfaceC2120b.mo610a(), interfaceC2198m), c2173h);
    }

    @Override // p022j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: a */
    public final InterfaceC2129k mo624a() {
        return this.f684a.mo610a();
    }

    @Override // p022j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: f */
    public final InterfaceC2120b mo626f() {
        return this.f684a;
    }

    public final int hashCode() {
        return this.f684a.hashCode() ^ this.f685b.hashCode();
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: r */
    public final InterfaceC2198m mo591r(long j, EnumC2187b enumC2187b) {
        return m685v(this.f684a.mo610a(), AbstractC2203r.m781b(this, j, enumC2187b));
    }

    public final String toString() {
        return this.f684a.toString() + "T" + this.f685b.toString();
    }

    @Override // p022j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: b */
    public final C2173h mo625b() {
        return this.f685b;
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: e */
    public final boolean mo575e(InterfaceC2202q interfaceC2202q) {
        if (!(interfaceC2202q instanceof EnumC2186a)) {
            return interfaceC2202q != null && interfaceC2202q.mo769h(this);
        }
        EnumC2186a enumC2186a = (EnumC2186a) interfaceC2202q;
        return enumC2186a.isDateBased() || enumC2186a.m775v();
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: j */
    public final C2206u mo577j(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            if (!((EnumC2186a) interfaceC2202q).m775v()) {
                return this.f684a.mo577j(interfaceC2202q);
            }
            C2173h c2173h = this.f685b;
            c2173h.getClass();
            return AbstractC2203r.m783d(c2173h, interfaceC2202q);
        }
        return interfaceC2202q.mo770i(this);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: h */
    public final int mo576h(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            return ((EnumC2186a) interfaceC2202q).m775v() ? this.f685b.mo576h(interfaceC2202q) : this.f684a.mo576h(interfaceC2202q);
        }
        return mo577j(interfaceC2202q).m786a(mo580w(interfaceC2202q), interfaceC2202q);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: w */
    public final long mo580w(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            return ((EnumC2186a) interfaceC2202q).m775v() ? this.f685b.mo580w(interfaceC2202q) : this.f684a.mo580w(interfaceC2202q);
        }
        return interfaceC2202q.mo772k(this);
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: i */
    public final InterfaceC2198m mo590i(LocalDate localDate) {
        if (AbstractC2109c.m665b(localDate)) {
            return m690G(localDate, this.f685b);
        }
        InterfaceC2129k interfaceC2129kMo610a = this.f684a.mo610a();
        localDate.getClass();
        return m685v(interfaceC2129kMo610a, (C2124f) AbstractC2104a.m538a(localDate, this));
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public final C2124f mo588c(long j, InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            if (((EnumC2186a) interfaceC2202q).m775v()) {
                return m690G(this.f684a, this.f685b.mo588c(j, interfaceC2202q));
            }
            return m690G(this.f684a.mo588c(j, interfaceC2202q), this.f685b);
        }
        return m685v(this.f684a.mo610a(), interfaceC2202q.mo773n(this, j));
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public final C2124f mo589d(long j, InterfaceC2204s interfaceC2204s) {
        if (!(interfaceC2204s instanceof EnumC2187b)) {
            return m685v(this.f684a.mo610a(), interfaceC2204s.mo776h(this, j));
        }
        switch (AbstractC2123e.f683a[((EnumC2187b) interfaceC2204s).ordinal()]) {
            case 1:
                return m687D(this.f684a, 0L, 0L, 0L, j);
            case 2:
                C2124f c2124fM690G = m690G(this.f684a.mo589d(j / 86400000000L, (InterfaceC2204s) EnumC2187b.DAYS), this.f685b);
                return c2124fM690G.m687D(c2124fM690G.f684a, 0L, 0L, 0L, (j % 86400000000L) * 1000);
            case 3:
                C2124f c2124fM690G2 = m690G(this.f684a.mo589d(j / 86400000, (InterfaceC2204s) EnumC2187b.DAYS), this.f685b);
                return c2124fM690G2.m687D(c2124fM690G2.f684a, 0L, 0L, 0L, (j % 86400000) * 1000000);
            case 4:
                return m687D(this.f684a, 0L, 0L, j, 0L);
            case 5:
                return m687D(this.f684a, 0L, j, 0L, 0L);
            case 6:
                return m687D(this.f684a, j, 0L, 0L, 0L);
            case 7:
                C2124f c2124fM690G3 = m690G(this.f684a.mo589d(j / 256, (InterfaceC2204s) EnumC2187b.DAYS), this.f685b);
                return c2124fM690G3.m687D(c2124fM690G3.f684a, (j % 256) * 12, 0L, 0L, 0L);
            default:
                return m690G(this.f684a.mo589d(j, interfaceC2204s), this.f685b);
        }
    }

    /* JADX INFO: renamed from: D */
    public final C2124f m687D(InterfaceC2120b interfaceC2120b, long j, long j2, long j3, long j4) {
        if ((j | j2 | j3 | j4) == 0) {
            return m690G(interfaceC2120b, this.f685b);
        }
        long j5 = j / 24;
        long j6 = ((j % 24) * 3600000000000L) + ((j2 % 1440) * 60000000000L) + ((j3 % 86400) * 1000000000) + (j4 % 86400000000000L);
        long jM748M = this.f685b.m748M();
        long j7 = j6 + jM748M;
        long jM534T = AbstractC2104a.m534T(j7, 86400000000000L) + j5 + (j2 / 1440) + (j3 / 86400) + (j4 / 86400000000000L);
        long jM533S = AbstractC2104a.m533S(j7, 86400000000000L);
        return m690G(interfaceC2120b.mo589d(jM534T, (InterfaceC2204s) EnumC2187b.DAYS), jM533S == jM748M ? this.f685b : C2173h.m740F(jM533S));
    }

    @Override // p022j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: l */
    public final ChronoZonedDateTime mo627l(ZoneOffset zoneOffset) {
        return C2128j.m692v(zoneOffset, null, this);
    }

    @Override // p022j$.time.temporal.InterfaceC2200o
    /* JADX INFO: renamed from: n */
    public final InterfaceC2198m mo579n(InterfaceC2198m interfaceC2198m) {
        return interfaceC2198m.mo588c(mo626f().mo612x(), EnumC2186a.EPOCH_DAY).mo588c(mo625b().m748M(), EnumC2186a.NANO_OF_DAY);
    }

    private Object writeReplace() {
        return new C2113D((byte) 2, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ChronoLocalDateTime) && AbstractC2104a.m543f(this, (ChronoLocalDateTime) obj) == 0;
    }

    @Override // p022j$.time.chrono.ChronoLocalDateTime
    public final Instant toInstant(ZoneOffset zoneOffset) {
        return Instant.m584D(m688E(zoneOffset), mo625b().f800d);
    }
}
