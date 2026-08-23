package j$.time.format;

import j$.time.AbstractC2130d;
import j$.time.C2103c;
import j$.time.C2159g;
import j$.time.C2162j;
import j$.time.C2196x;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.Period;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.chrono.InterfaceC2105b;
import j$.time.chrono.InterfaceC2114k;
import j$.time.temporal.AbstractC2189q;
import j$.time.temporal.C2191s;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2184l;
import j$.time.temporal.InterfaceC2188p;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: renamed from: j$.time.format.y */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2157y implements InterfaceC2184l {

    /* JADX INFO: renamed from: b */
    public ZoneId f640b;

    /* JADX INFO: renamed from: c */
    public InterfaceC2114k f641c;

    /* JADX INFO: renamed from: d */
    public boolean f642d;

    /* JADX INFO: renamed from: e */
    public EnumC2158z f643e;

    /* JADX INFO: renamed from: f */
    public InterfaceC2105b f644f;

    /* JADX INFO: renamed from: g */
    public C2162j f645g;

    /* JADX INFO: renamed from: a */
    public final Map f639a = new HashMap();

    /* JADX INFO: renamed from: h */
    public Period f646h = Period.f481d;

    /* JADX INFO: renamed from: A */
    public final void m676A(InterfaceC2188p interfaceC2188p, EnumC2173a enumC2173a, Long l) {
        Long l2 = (Long) ((HashMap) this.f639a).put(enumC2173a, l);
        if (l2 == null || l2.longValue() == l.longValue()) {
            return;
        }
        throw new C2103c("Conflict found: " + enumC2173a + " " + l2 + " differs from " + enumC2173a + " " + l + " while resolving  " + interfaceC2188p);
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: d */
    public final Object mo482d(C2196x c2196x) {
        if (c2196x == AbstractC2189q.f697a) {
            return this.f640b;
        }
        if (c2196x == AbstractC2189q.f698b) {
            return this.f641c;
        }
        if (c2196x == AbstractC2189q.f702f) {
            InterfaceC2105b interfaceC2105b = this.f644f;
            if (interfaceC2105b != null) {
                return LocalDate.m502G(interfaceC2105b);
            }
            return null;
        }
        if (c2196x == AbstractC2189q.f703g) {
            return this.f645g;
        }
        if (c2196x == AbstractC2189q.f700d) {
            Long l = (Long) ((HashMap) this.f639a).get(EnumC2173a.OFFSET_SECONDS);
            if (l != null) {
                return ZoneOffset.m549Z(l.intValue());
            }
            ZoneId zoneId = this.f640b;
            return zoneId instanceof ZoneOffset ? zoneId : c2196x.m734m(this);
        }
        if (c2196x == AbstractC2189q.f701e) {
            return c2196x.m734m(this);
        }
        if (c2196x == AbstractC2189q.f699c) {
            return null;
        }
        return c2196x.m734m(this);
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: i */
    public final boolean mo485i(InterfaceC2188p interfaceC2188p) {
        if (((HashMap) this.f639a).containsKey(interfaceC2188p)) {
            return true;
        }
        InterfaceC2105b interfaceC2105b = this.f644f;
        if (interfaceC2105b != null && interfaceC2105b.mo485i(interfaceC2188p)) {
            return true;
        }
        C2162j c2162j = this.f645g;
        if (c2162j == null || !c2162j.mo485i(interfaceC2188p)) {
            return (interfaceC2188p == null || (interfaceC2188p instanceof EnumC2173a) || !interfaceC2188p.mo721t(this)) ? false : true;
        }
        return true;
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: k */
    public final long mo486k(InterfaceC2188p interfaceC2188p) {
        Objects.requireNonNull(interfaceC2188p, "field");
        Long l = (Long) ((HashMap) this.f639a).get(interfaceC2188p);
        if (l != null) {
            return l.longValue();
        }
        InterfaceC2105b interfaceC2105b = this.f644f;
        if (interfaceC2105b != null && interfaceC2105b.mo485i(interfaceC2188p)) {
            return this.f644f.mo486k(interfaceC2188p);
        }
        C2162j c2162j = this.f645g;
        if (c2162j != null && c2162j.mo485i(interfaceC2188p)) {
            return this.f645g.mo486k(interfaceC2188p);
        }
        if (interfaceC2188p instanceof EnumC2173a) {
            throw new C2191s(AbstractC2130d.m629a("Unsupported field: ", interfaceC2188p));
        }
        return interfaceC2188p.mo717P(this);
    }

    /* JADX INFO: renamed from: r */
    public final void m677r(InterfaceC2184l interfaceC2184l) {
        Iterator it = ((HashMap) this.f639a).entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            InterfaceC2188p interfaceC2188p = (InterfaceC2188p) entry.getKey();
            if (interfaceC2184l.mo485i(interfaceC2188p)) {
                try {
                    long jMo486k = interfaceC2184l.mo486k(interfaceC2188p);
                    long jLongValue = ((Long) entry.getValue()).longValue();
                    if (jMo486k != jLongValue) {
                        throw new C2103c("Conflict found: Field " + interfaceC2188p + " " + jMo486k + " differs from " + interfaceC2188p + " " + jLongValue + " derived from " + interfaceC2184l);
                    }
                    it.remove();
                } catch (RuntimeException unused) {
                    continue;
                }
            }
        }
    }

    /* JADX INFO: renamed from: s */
    public final void m678s() {
        if (((HashMap) this.f639a).containsKey(EnumC2173a.INSTANT_SECONDS)) {
            ZoneId zoneId = this.f640b;
            if (zoneId != null) {
                m679t(zoneId);
                return;
            }
            Long l = (Long) ((HashMap) this.f639a).get(EnumC2173a.OFFSET_SECONDS);
            if (l != null) {
                m679t(ZoneOffset.m549Z(l.intValue()));
            }
        }
    }

    /* JADX INFO: renamed from: t */
    public final void m679t(ZoneId zoneId) {
        Map map = this.f639a;
        EnumC2173a enumC2173a = EnumC2173a.INSTANT_SECONDS;
        m683z(this.f641c.mo600T(Instant.m492t(((Long) ((HashMap) map).remove(enumC2173a)).longValue(), 0), zoneId).mo561n());
        m676A(enumC2173a, EnumC2173a.SECOND_OF_DAY, Long.valueOf(r5.mo560l().e0()));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append(this.f639a);
        sb.append(',');
        sb.append(this.f641c);
        if (this.f640b != null) {
            sb.append(',');
            sb.append(this.f640b);
        }
        if (this.f644f != null || this.f645g != null) {
            sb.append(" resolved to ");
            InterfaceC2105b interfaceC2105b = this.f644f;
            if (interfaceC2105b != null) {
                sb.append(interfaceC2105b);
                if (this.f645g != null) {
                    sb.append('T');
                    sb.append(this.f645g);
                }
            } else {
                sb.append(this.f645g);
            }
        }
        return sb.toString();
    }

    /* JADX INFO: renamed from: v */
    public final void m680v(long j, long j2, long j3, long j4) {
        if (this.f643e == EnumC2158z.LENIENT) {
            long jAddExact = Math.addExact(Math.addExact(Math.addExact(Math.multiplyExact(j, 3600000000000L), Math.multiplyExact(j2, 60000000000L)), Math.multiplyExact(j3, 1000000000L)), j4);
            m682x(C2162j.m696V(Math.floorMod(jAddExact, 86400000000000L)), Period.m534a(0, 0, (int) Math.floorDiv(jAddExact, 86400000000000L)));
            return;
        }
        EnumC2173a enumC2173a = EnumC2173a.MINUTE_OF_HOUR;
        int iM728a = enumC2173a.f681b.m728a(j2, enumC2173a);
        EnumC2173a enumC2173a2 = EnumC2173a.NANO_OF_SECOND;
        int iM728a2 = enumC2173a2.f681b.m728a(j4, enumC2173a2);
        if (this.f643e == EnumC2158z.SMART && j == 24 && iM728a == 0 && j3 == 0 && iM728a2 == 0) {
            m682x(C2162j.f653g, Period.m534a(0, 0, 1));
            return;
        }
        EnumC2173a enumC2173a3 = EnumC2173a.HOUR_OF_DAY;
        int iM728a3 = enumC2173a3.f681b.m728a(j, enumC2173a3);
        EnumC2173a enumC2173a4 = EnumC2173a.SECOND_OF_MINUTE;
        m682x(C2162j.m695P(iM728a3, iM728a, enumC2173a4.f681b.m728a(j3, enumC2173a4), iM728a2), Period.f481d);
    }

    /* JADX INFO: renamed from: w */
    public final void m681w() {
        Map map = this.f639a;
        EnumC2173a enumC2173a = EnumC2173a.CLOCK_HOUR_OF_DAY;
        if (((HashMap) map).containsKey(enumC2173a)) {
            long jLongValue = ((Long) ((HashMap) this.f639a).remove(enumC2173a)).longValue();
            EnumC2158z enumC2158z = this.f643e;
            if (enumC2158z == EnumC2158z.STRICT || (enumC2158z == EnumC2158z.SMART && jLongValue != 0)) {
                enumC2173a.m719X(jLongValue);
            }
            EnumC2173a enumC2173a2 = EnumC2173a.HOUR_OF_DAY;
            if (jLongValue == 24) {
                jLongValue = 0;
            }
            m676A(enumC2173a, enumC2173a2, Long.valueOf(jLongValue));
        }
        Map map2 = this.f639a;
        EnumC2173a enumC2173a3 = EnumC2173a.CLOCK_HOUR_OF_AMPM;
        if (((HashMap) map2).containsKey(enumC2173a3)) {
            long jLongValue2 = ((Long) ((HashMap) this.f639a).remove(enumC2173a3)).longValue();
            EnumC2158z enumC2158z2 = this.f643e;
            if (enumC2158z2 == EnumC2158z.STRICT || (enumC2158z2 == EnumC2158z.SMART && jLongValue2 != 0)) {
                enumC2173a3.m719X(jLongValue2);
            }
            m676A(enumC2173a3, EnumC2173a.HOUR_OF_AMPM, Long.valueOf(jLongValue2 != 12 ? jLongValue2 : 0L));
        }
        Map map3 = this.f639a;
        EnumC2173a enumC2173a4 = EnumC2173a.AMPM_OF_DAY;
        if (((HashMap) map3).containsKey(enumC2173a4)) {
            Map map4 = this.f639a;
            EnumC2173a enumC2173a5 = EnumC2173a.HOUR_OF_AMPM;
            if (((HashMap) map4).containsKey(enumC2173a5)) {
                long jLongValue3 = ((Long) ((HashMap) this.f639a).remove(enumC2173a4)).longValue();
                long jLongValue4 = ((Long) ((HashMap) this.f639a).remove(enumC2173a5)).longValue();
                if (this.f643e == EnumC2158z.LENIENT) {
                    m676A(enumC2173a4, EnumC2173a.HOUR_OF_DAY, Long.valueOf(Math.addExact(Math.multiplyExact(jLongValue3, 12L), jLongValue4)));
                } else {
                    enumC2173a4.m719X(jLongValue3);
                    enumC2173a5.m719X(jLongValue3);
                    m676A(enumC2173a4, EnumC2173a.HOUR_OF_DAY, Long.valueOf((jLongValue3 * 12) + jLongValue4));
                }
            }
        }
        Map map5 = this.f639a;
        EnumC2173a enumC2173a6 = EnumC2173a.NANO_OF_DAY;
        if (((HashMap) map5).containsKey(enumC2173a6)) {
            long jLongValue5 = ((Long) ((HashMap) this.f639a).remove(enumC2173a6)).longValue();
            if (this.f643e != EnumC2158z.LENIENT) {
                enumC2173a6.m719X(jLongValue5);
            }
            m676A(enumC2173a6, EnumC2173a.HOUR_OF_DAY, Long.valueOf(jLongValue5 / 3600000000000L));
            m676A(enumC2173a6, EnumC2173a.MINUTE_OF_HOUR, Long.valueOf((jLongValue5 / 60000000000L) % 60));
            m676A(enumC2173a6, EnumC2173a.SECOND_OF_MINUTE, Long.valueOf((jLongValue5 / 1000000000) % 60));
            m676A(enumC2173a6, EnumC2173a.NANO_OF_SECOND, Long.valueOf(jLongValue5 % 1000000000));
        }
        Map map6 = this.f639a;
        EnumC2173a enumC2173a7 = EnumC2173a.MICRO_OF_DAY;
        if (((HashMap) map6).containsKey(enumC2173a7)) {
            long jLongValue6 = ((Long) ((HashMap) this.f639a).remove(enumC2173a7)).longValue();
            if (this.f643e != EnumC2158z.LENIENT) {
                enumC2173a7.m719X(jLongValue6);
            }
            m676A(enumC2173a7, EnumC2173a.SECOND_OF_DAY, Long.valueOf(jLongValue6 / 1000000));
            m676A(enumC2173a7, EnumC2173a.MICRO_OF_SECOND, Long.valueOf(jLongValue6 % 1000000));
        }
        Map map7 = this.f639a;
        EnumC2173a enumC2173a8 = EnumC2173a.MILLI_OF_DAY;
        if (((HashMap) map7).containsKey(enumC2173a8)) {
            long jLongValue7 = ((Long) ((HashMap) this.f639a).remove(enumC2173a8)).longValue();
            if (this.f643e != EnumC2158z.LENIENT) {
                enumC2173a8.m719X(jLongValue7);
            }
            m676A(enumC2173a8, EnumC2173a.SECOND_OF_DAY, Long.valueOf(jLongValue7 / 1000));
            m676A(enumC2173a8, EnumC2173a.MILLI_OF_SECOND, Long.valueOf(jLongValue7 % 1000));
        }
        Map map8 = this.f639a;
        EnumC2173a enumC2173a9 = EnumC2173a.SECOND_OF_DAY;
        if (((HashMap) map8).containsKey(enumC2173a9)) {
            long jLongValue8 = ((Long) ((HashMap) this.f639a).remove(enumC2173a9)).longValue();
            if (this.f643e != EnumC2158z.LENIENT) {
                enumC2173a9.m719X(jLongValue8);
            }
            m676A(enumC2173a9, EnumC2173a.HOUR_OF_DAY, Long.valueOf(jLongValue8 / 3600));
            m676A(enumC2173a9, EnumC2173a.MINUTE_OF_HOUR, Long.valueOf((jLongValue8 / 60) % 60));
            m676A(enumC2173a9, EnumC2173a.SECOND_OF_MINUTE, Long.valueOf(jLongValue8 % 60));
        }
        Map map9 = this.f639a;
        EnumC2173a enumC2173a10 = EnumC2173a.MINUTE_OF_DAY;
        if (((HashMap) map9).containsKey(enumC2173a10)) {
            long jLongValue9 = ((Long) ((HashMap) this.f639a).remove(enumC2173a10)).longValue();
            if (this.f643e != EnumC2158z.LENIENT) {
                enumC2173a10.m719X(jLongValue9);
            }
            m676A(enumC2173a10, EnumC2173a.HOUR_OF_DAY, Long.valueOf(jLongValue9 / 60));
            m676A(enumC2173a10, EnumC2173a.MINUTE_OF_HOUR, Long.valueOf(jLongValue9 % 60));
        }
        Map map10 = this.f639a;
        EnumC2173a enumC2173a11 = EnumC2173a.NANO_OF_SECOND;
        if (((HashMap) map10).containsKey(enumC2173a11)) {
            long jLongValue10 = ((Long) ((HashMap) this.f639a).get(enumC2173a11)).longValue();
            EnumC2158z enumC2158z3 = this.f643e;
            EnumC2158z enumC2158z4 = EnumC2158z.LENIENT;
            if (enumC2158z3 != enumC2158z4) {
                enumC2173a11.m719X(jLongValue10);
            }
            Map map11 = this.f639a;
            EnumC2173a enumC2173a12 = EnumC2173a.MICRO_OF_SECOND;
            if (((HashMap) map11).containsKey(enumC2173a12)) {
                long jLongValue11 = ((Long) ((HashMap) this.f639a).remove(enumC2173a12)).longValue();
                if (this.f643e != enumC2158z4) {
                    enumC2173a12.m719X(jLongValue11);
                }
                jLongValue10 = (jLongValue10 % 1000) + (jLongValue11 * 1000);
                m676A(enumC2173a12, enumC2173a11, Long.valueOf(jLongValue10));
            }
            Map map12 = this.f639a;
            EnumC2173a enumC2173a13 = EnumC2173a.MILLI_OF_SECOND;
            if (((HashMap) map12).containsKey(enumC2173a13)) {
                long jLongValue12 = ((Long) ((HashMap) this.f639a).remove(enumC2173a13)).longValue();
                if (this.f643e != enumC2158z4) {
                    enumC2173a13.m719X(jLongValue12);
                }
                m676A(enumC2173a13, enumC2173a11, Long.valueOf((jLongValue10 % 1000000) + (jLongValue12 * 1000000)));
            }
        }
        Map map13 = this.f639a;
        EnumC2173a enumC2173a14 = EnumC2173a.HOUR_OF_DAY;
        if (((HashMap) map13).containsKey(enumC2173a14)) {
            Map map14 = this.f639a;
            EnumC2173a enumC2173a15 = EnumC2173a.MINUTE_OF_HOUR;
            if (((HashMap) map14).containsKey(enumC2173a15)) {
                Map map15 = this.f639a;
                EnumC2173a enumC2173a16 = EnumC2173a.SECOND_OF_MINUTE;
                if (((HashMap) map15).containsKey(enumC2173a16) && ((HashMap) this.f639a).containsKey(enumC2173a11)) {
                    m680v(((Long) ((HashMap) this.f639a).remove(enumC2173a14)).longValue(), ((Long) ((HashMap) this.f639a).remove(enumC2173a15)).longValue(), ((Long) ((HashMap) this.f639a).remove(enumC2173a16)).longValue(), ((Long) ((HashMap) this.f639a).remove(enumC2173a11)).longValue());
                }
            }
        }
    }

    /* JADX INFO: renamed from: x */
    public final void m682x(C2162j c2162j, Period period) {
        C2162j c2162j2 = this.f645g;
        if (c2162j2 == null) {
            this.f645g = c2162j;
            this.f646h = period;
            return;
        }
        if (!c2162j2.equals(c2162j)) {
            C2159g.m689f("Conflict found: Fields resolved to different times: ", this.f645g, " ", c2162j);
            return;
        }
        Period period2 = this.f646h;
        period2.getClass();
        Period period3 = Period.f481d;
        if (period2 == period3 || period == period3 || this.f646h.equals(period)) {
            this.f646h = period;
        } else {
            C2159g.m689f("Conflict found: Fields resolved to different excess periods: ", this.f646h, " ", period);
        }
    }

    /* JADX INFO: renamed from: z */
    public final void m683z(InterfaceC2105b interfaceC2105b) {
        InterfaceC2105b interfaceC2105b2 = this.f644f;
        if (interfaceC2105b2 != null) {
            if (interfaceC2105b == null || interfaceC2105b2.equals(interfaceC2105b)) {
                return;
            }
            C2159g.m689f("Conflict found: Fields resolved to two different dates: ", this.f644f, " ", interfaceC2105b);
            return;
        }
        if (interfaceC2105b != null) {
            if (this.f641c.equals(interfaceC2105b.mo514f())) {
                this.f644f = interfaceC2105b;
                return;
            }
            throw new C2103c("ChronoLocalDate must use the effective parsed chronology: " + this.f641c);
        }
    }
}
