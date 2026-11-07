package j$.time.format;

import j$.nio.file.C2288b;
import j$.time.AbstractC2324b;
import j$.time.C2352d;
import j$.time.DateTimeException;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.Period;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.chrono.InterfaceC2327b;
import j$.time.chrono.InterfaceC2336k;
import j$.time.temporal.AbstractC2409q;
import j$.time.temporal.C2410r;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2404l;
import j$.time.temporal.InterfaceC2408p;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: renamed from: j$.time.format.y */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2379y implements InterfaceC2404l {

    /* JADX INFO: renamed from: b */
    public ZoneId f800b;

    /* JADX INFO: renamed from: c */
    public InterfaceC2336k f801c;

    /* JADX INFO: renamed from: d */
    public boolean f802d;

    /* JADX INFO: renamed from: e */
    public EnumC2380z f803e;

    /* JADX INFO: renamed from: f */
    public InterfaceC2327b f804f;

    /* JADX INFO: renamed from: g */
    public LocalTime f805g;

    /* JADX INFO: renamed from: a */
    public final Map f799a = new HashMap();

    /* JADX INFO: renamed from: h */
    public Period f806h = Period.f636d;

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: d */
    public final Object mo554d(C2352d c2352d) {
        if (c2352d == AbstractC2409q.f849a) {
            return this.f800b;
        }
        if (c2352d == AbstractC2409q.f850b) {
            return this.f801c;
        }
        if (c2352d == AbstractC2409q.f854f) {
            InterfaceC2327b interfaceC2327b = this.f804f;
            if (interfaceC2327b != null) {
                return LocalDate.m682I(interfaceC2327b);
            }
            return null;
        }
        if (c2352d == AbstractC2409q.f855g) {
            return this.f805g;
        }
        if (c2352d == AbstractC2409q.f852d) {
            Long l = (Long) ((HashMap) this.f799a).get(EnumC2393a.OFFSET_SECONDS);
            if (l != null) {
                return ZoneOffset.ofTotalSeconds(l.intValue());
            }
            ZoneId zoneId = this.f800b;
            return zoneId instanceof ZoneOffset ? zoneId : c2352d.m810l(this);
        }
        if (c2352d == AbstractC2409q.f853e) {
            return c2352d.m810l(this);
        }
        if (c2352d == AbstractC2409q.f851c) {
            return null;
        }
        return c2352d.m810l(this);
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: i */
    public final boolean mo555i(InterfaceC2408p interfaceC2408p) {
        if (((HashMap) this.f799a).containsKey(interfaceC2408p)) {
            return true;
        }
        InterfaceC2327b interfaceC2327b = this.f804f;
        if (interfaceC2327b != null && interfaceC2327b.mo555i(interfaceC2408p)) {
            return true;
        }
        LocalTime localTime = this.f805g;
        if (localTime == null || !localTime.mo555i(interfaceC2408p)) {
            return (interfaceC2408p == null || (interfaceC2408p instanceof EnumC2393a) || !interfaceC2408p.mo879s(this)) ? false : true;
        }
        return true;
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: k */
    public final long mo556k(InterfaceC2408p interfaceC2408p) {
        Objects.requireNonNull(interfaceC2408p, "field");
        Long l = (Long) ((HashMap) this.f799a).get(interfaceC2408p);
        if (l != null) {
            return l.longValue();
        }
        InterfaceC2327b interfaceC2327b = this.f804f;
        if (interfaceC2327b != null && interfaceC2327b.mo555i(interfaceC2408p)) {
            return this.f804f.mo556k(interfaceC2408p);
        }
        LocalTime localTime = this.f805g;
        if (localTime != null && localTime.mo555i(interfaceC2408p)) {
            return this.f805g.mo556k(interfaceC2408p);
        }
        if (interfaceC2408p instanceof EnumC2393a) {
            throw new C2410r(AbstractC2324b.m753a("Unsupported field: ", interfaceC2408p));
        }
        return interfaceC2408p.mo875R(this);
    }

    /* JADX INFO: renamed from: p */
    public final void m858p(InterfaceC2404l interfaceC2404l) {
        Iterator it = ((HashMap) this.f799a).entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            InterfaceC2408p interfaceC2408p = (InterfaceC2408p) entry.getKey();
            if (interfaceC2404l.mo555i(interfaceC2408p)) {
                try {
                    long jMo556k = interfaceC2404l.mo556k(interfaceC2408p);
                    long jLongValue = ((Long) entry.getValue()).longValue();
                    if (jMo556k != jLongValue) {
                        throw new DateTimeException("Conflict found: Field " + interfaceC2408p + " " + jMo556k + " differs from " + interfaceC2408p + " " + jLongValue + " derived from " + interfaceC2404l);
                    }
                    it.remove();
                } catch (RuntimeException unused) {
                    continue;
                }
            }
        }
    }

    /* JADX INFO: renamed from: q */
    public final void m859q() {
        if (((HashMap) this.f799a).containsKey(EnumC2393a.INSTANT_SECONDS)) {
            ZoneId zoneId = this.f800b;
            if (zoneId != null) {
                m860r(zoneId);
                return;
            }
            Long l = (Long) ((HashMap) this.f799a).get(EnumC2393a.OFFSET_SECONDS);
            if (l != null) {
                m860r(ZoneOffset.ofTotalSeconds(l.intValue()));
            }
        }
    }

    /* JADX INFO: renamed from: r */
    public final void m860r(ZoneId zoneId) {
        Map map = this.f799a;
        EnumC2393a enumC2393a = EnumC2393a.INSTANT_SECONDS;
        m864w(this.f801c.mo785V(Instant.m672s(((Long) ((HashMap) map).remove(enumC2393a)).longValue(), 0), zoneId).mo751m());
        m865x(enumC2393a, EnumC2393a.SECOND_OF_DAY, Long.valueOf(r5.toLocalTime().e0()));
    }

    /* JADX INFO: renamed from: s */
    public final void m861s(long j, long j2, long j3, long j4) {
        if (this.f803e == EnumC2380z.LENIENT) {
            long jAddExact = Math.addExact(Math.addExact(Math.addExact(Math.multiplyExact(j, 3600000000000L), Math.multiplyExact(j2, 60000000000L)), Math.multiplyExact(j3, 1000000000L)), j4);
            m863v(LocalTime.m709R(Math.floorMod(jAddExact, 86400000000000L)), Period.m722a(0, 0, (int) Math.floorDiv(jAddExact, 86400000000000L)));
            return;
        }
        EnumC2393a enumC2393a = EnumC2393a.MINUTE_OF_HOUR;
        int iM885a = enumC2393a.f832b.m885a(j2, enumC2393a);
        EnumC2393a enumC2393a2 = EnumC2393a.NANO_OF_SECOND;
        int iM885a2 = enumC2393a2.f832b.m885a(j4, enumC2393a2);
        if (this.f803e == EnumC2380z.SMART && j == 24 && iM885a == 0 && j3 == 0 && iM885a2 == 0) {
            m863v(LocalTime.f621g, Period.m722a(0, 0, 1));
            return;
        }
        EnumC2393a enumC2393a3 = EnumC2393a.HOUR_OF_DAY;
        int iM885a3 = enumC2393a3.f832b.m885a(j, enumC2393a3);
        EnumC2393a enumC2393a4 = EnumC2393a.SECOND_OF_MINUTE;
        m863v(LocalTime.of(iM885a3, iM885a, enumC2393a4.f832b.m885a(j3, enumC2393a4), iM885a2), Period.f636d);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append(this.f799a);
        sb.append(',');
        sb.append(this.f801c);
        if (this.f800b != null) {
            sb.append(',');
            sb.append(this.f800b);
        }
        if (this.f804f != null || this.f805g != null) {
            sb.append(" resolved to ");
            InterfaceC2327b interfaceC2327b = this.f804f;
            if (interfaceC2327b != null) {
                sb.append(interfaceC2327b);
                if (this.f805g != null) {
                    sb.append('T');
                    sb.append(this.f805g);
                }
            } else {
                sb.append(this.f805g);
            }
        }
        return sb.toString();
    }

    /* JADX INFO: renamed from: u */
    public final void m862u() {
        Map map = this.f799a;
        EnumC2393a enumC2393a = EnumC2393a.CLOCK_HOUR_OF_DAY;
        if (((HashMap) map).containsKey(enumC2393a)) {
            long jLongValue = ((Long) ((HashMap) this.f799a).remove(enumC2393a)).longValue();
            EnumC2380z enumC2380z = this.f803e;
            if (enumC2380z == EnumC2380z.STRICT || (enumC2380z == EnumC2380z.SMART && jLongValue != 0)) {
                enumC2393a.m877Y(jLongValue);
            }
            EnumC2393a enumC2393a2 = EnumC2393a.HOUR_OF_DAY;
            if (jLongValue == 24) {
                jLongValue = 0;
            }
            m865x(enumC2393a, enumC2393a2, Long.valueOf(jLongValue));
        }
        Map map2 = this.f799a;
        EnumC2393a enumC2393a3 = EnumC2393a.CLOCK_HOUR_OF_AMPM;
        if (((HashMap) map2).containsKey(enumC2393a3)) {
            long jLongValue2 = ((Long) ((HashMap) this.f799a).remove(enumC2393a3)).longValue();
            EnumC2380z enumC2380z2 = this.f803e;
            if (enumC2380z2 == EnumC2380z.STRICT || (enumC2380z2 == EnumC2380z.SMART && jLongValue2 != 0)) {
                enumC2393a3.m877Y(jLongValue2);
            }
            m865x(enumC2393a3, EnumC2393a.HOUR_OF_AMPM, Long.valueOf(jLongValue2 != 12 ? jLongValue2 : 0L));
        }
        Map map3 = this.f799a;
        EnumC2393a enumC2393a4 = EnumC2393a.AMPM_OF_DAY;
        if (((HashMap) map3).containsKey(enumC2393a4)) {
            Map map4 = this.f799a;
            EnumC2393a enumC2393a5 = EnumC2393a.HOUR_OF_AMPM;
            if (((HashMap) map4).containsKey(enumC2393a5)) {
                long jLongValue3 = ((Long) ((HashMap) this.f799a).remove(enumC2393a4)).longValue();
                long jLongValue4 = ((Long) ((HashMap) this.f799a).remove(enumC2393a5)).longValue();
                if (this.f803e == EnumC2380z.LENIENT) {
                    m865x(enumC2393a4, EnumC2393a.HOUR_OF_DAY, Long.valueOf(Math.addExact(Math.multiplyExact(jLongValue3, 12L), jLongValue4)));
                } else {
                    enumC2393a4.m877Y(jLongValue3);
                    enumC2393a5.m877Y(jLongValue3);
                    m865x(enumC2393a4, EnumC2393a.HOUR_OF_DAY, Long.valueOf((jLongValue3 * 12) + jLongValue4));
                }
            }
        }
        Map map5 = this.f799a;
        EnumC2393a enumC2393a6 = EnumC2393a.NANO_OF_DAY;
        if (((HashMap) map5).containsKey(enumC2393a6)) {
            long jLongValue5 = ((Long) ((HashMap) this.f799a).remove(enumC2393a6)).longValue();
            if (this.f803e != EnumC2380z.LENIENT) {
                enumC2393a6.m877Y(jLongValue5);
            }
            m865x(enumC2393a6, EnumC2393a.HOUR_OF_DAY, Long.valueOf(jLongValue5 / 3600000000000L));
            m865x(enumC2393a6, EnumC2393a.MINUTE_OF_HOUR, Long.valueOf((jLongValue5 / 60000000000L) % 60));
            m865x(enumC2393a6, EnumC2393a.SECOND_OF_MINUTE, Long.valueOf((jLongValue5 / 1000000000) % 60));
            m865x(enumC2393a6, EnumC2393a.NANO_OF_SECOND, Long.valueOf(jLongValue5 % 1000000000));
        }
        Map map6 = this.f799a;
        EnumC2393a enumC2393a7 = EnumC2393a.MICRO_OF_DAY;
        if (((HashMap) map6).containsKey(enumC2393a7)) {
            long jLongValue6 = ((Long) ((HashMap) this.f799a).remove(enumC2393a7)).longValue();
            if (this.f803e != EnumC2380z.LENIENT) {
                enumC2393a7.m877Y(jLongValue6);
            }
            m865x(enumC2393a7, EnumC2393a.SECOND_OF_DAY, Long.valueOf(jLongValue6 / 1000000));
            m865x(enumC2393a7, EnumC2393a.MICRO_OF_SECOND, Long.valueOf(jLongValue6 % 1000000));
        }
        Map map7 = this.f799a;
        EnumC2393a enumC2393a8 = EnumC2393a.MILLI_OF_DAY;
        if (((HashMap) map7).containsKey(enumC2393a8)) {
            long jLongValue7 = ((Long) ((HashMap) this.f799a).remove(enumC2393a8)).longValue();
            if (this.f803e != EnumC2380z.LENIENT) {
                enumC2393a8.m877Y(jLongValue7);
            }
            m865x(enumC2393a8, EnumC2393a.SECOND_OF_DAY, Long.valueOf(jLongValue7 / 1000));
            m865x(enumC2393a8, EnumC2393a.MILLI_OF_SECOND, Long.valueOf(jLongValue7 % 1000));
        }
        Map map8 = this.f799a;
        EnumC2393a enumC2393a9 = EnumC2393a.SECOND_OF_DAY;
        if (((HashMap) map8).containsKey(enumC2393a9)) {
            long jLongValue8 = ((Long) ((HashMap) this.f799a).remove(enumC2393a9)).longValue();
            if (this.f803e != EnumC2380z.LENIENT) {
                enumC2393a9.m877Y(jLongValue8);
            }
            m865x(enumC2393a9, EnumC2393a.HOUR_OF_DAY, Long.valueOf(jLongValue8 / 3600));
            m865x(enumC2393a9, EnumC2393a.MINUTE_OF_HOUR, Long.valueOf((jLongValue8 / 60) % 60));
            m865x(enumC2393a9, EnumC2393a.SECOND_OF_MINUTE, Long.valueOf(jLongValue8 % 60));
        }
        Map map9 = this.f799a;
        EnumC2393a enumC2393a10 = EnumC2393a.MINUTE_OF_DAY;
        if (((HashMap) map9).containsKey(enumC2393a10)) {
            long jLongValue9 = ((Long) ((HashMap) this.f799a).remove(enumC2393a10)).longValue();
            if (this.f803e != EnumC2380z.LENIENT) {
                enumC2393a10.m877Y(jLongValue9);
            }
            m865x(enumC2393a10, EnumC2393a.HOUR_OF_DAY, Long.valueOf(jLongValue9 / 60));
            m865x(enumC2393a10, EnumC2393a.MINUTE_OF_HOUR, Long.valueOf(jLongValue9 % 60));
        }
        Map map10 = this.f799a;
        EnumC2393a enumC2393a11 = EnumC2393a.NANO_OF_SECOND;
        if (((HashMap) map10).containsKey(enumC2393a11)) {
            long jLongValue10 = ((Long) ((HashMap) this.f799a).get(enumC2393a11)).longValue();
            EnumC2380z enumC2380z3 = this.f803e;
            EnumC2380z enumC2380z4 = EnumC2380z.LENIENT;
            if (enumC2380z3 != enumC2380z4) {
                enumC2393a11.m877Y(jLongValue10);
            }
            Map map11 = this.f799a;
            EnumC2393a enumC2393a12 = EnumC2393a.MICRO_OF_SECOND;
            if (((HashMap) map11).containsKey(enumC2393a12)) {
                long jLongValue11 = ((Long) ((HashMap) this.f799a).remove(enumC2393a12)).longValue();
                if (this.f803e != enumC2380z4) {
                    enumC2393a12.m877Y(jLongValue11);
                }
                jLongValue10 = (jLongValue10 % 1000) + (jLongValue11 * 1000);
                m865x(enumC2393a12, enumC2393a11, Long.valueOf(jLongValue10));
            }
            Map map12 = this.f799a;
            EnumC2393a enumC2393a13 = EnumC2393a.MILLI_OF_SECOND;
            if (((HashMap) map12).containsKey(enumC2393a13)) {
                long jLongValue12 = ((Long) ((HashMap) this.f799a).remove(enumC2393a13)).longValue();
                if (this.f803e != enumC2380z4) {
                    enumC2393a13.m877Y(jLongValue12);
                }
                m865x(enumC2393a13, enumC2393a11, Long.valueOf((jLongValue10 % 1000000) + (jLongValue12 * 1000000)));
            }
        }
        Map map13 = this.f799a;
        EnumC2393a enumC2393a14 = EnumC2393a.HOUR_OF_DAY;
        if (((HashMap) map13).containsKey(enumC2393a14)) {
            Map map14 = this.f799a;
            EnumC2393a enumC2393a15 = EnumC2393a.MINUTE_OF_HOUR;
            if (((HashMap) map14).containsKey(enumC2393a15)) {
                Map map15 = this.f799a;
                EnumC2393a enumC2393a16 = EnumC2393a.SECOND_OF_MINUTE;
                if (((HashMap) map15).containsKey(enumC2393a16) && ((HashMap) this.f799a).containsKey(enumC2393a11)) {
                    m861s(((Long) ((HashMap) this.f799a).remove(enumC2393a14)).longValue(), ((Long) ((HashMap) this.f799a).remove(enumC2393a15)).longValue(), ((Long) ((HashMap) this.f799a).remove(enumC2393a16)).longValue(), ((Long) ((HashMap) this.f799a).remove(enumC2393a11)).longValue());
                }
            }
        }
    }

    /* JADX INFO: renamed from: v */
    public final void m863v(LocalTime localTime, Period period) {
        LocalTime localTime2 = this.f805g;
        if (localTime2 == null) {
            this.f805g = localTime;
            this.f806h = period;
            return;
        }
        if (!localTime2.equals(localTime)) {
            C2288b.m637f("Conflict found: Fields resolved to different times: ", this.f805g, " ", localTime);
            return;
        }
        Period period2 = this.f806h;
        period2.getClass();
        Period period3 = Period.f636d;
        if (period2 == period3 || period == period3 || this.f806h.equals(period)) {
            this.f806h = period;
        } else {
            C2288b.m637f("Conflict found: Fields resolved to different excess periods: ", this.f806h, " ", period);
        }
    }

    /* JADX INFO: renamed from: w */
    public final void m864w(InterfaceC2327b interfaceC2327b) {
        InterfaceC2327b interfaceC2327b2 = this.f804f;
        if (interfaceC2327b2 != null) {
            if (interfaceC2327b == null || interfaceC2327b2.equals(interfaceC2327b)) {
                return;
            }
            C2288b.m637f("Conflict found: Fields resolved to two different dates: ", this.f804f, " ", interfaceC2327b);
            return;
        }
        if (interfaceC2327b != null) {
            if (this.f801c.equals(interfaceC2327b.mo692f())) {
                this.f804f = interfaceC2327b;
                return;
            }
            throw new DateTimeException("ChronoLocalDate must use the effective parsed chronology: " + this.f801c);
        }
    }

    /* JADX INFO: renamed from: x */
    public final void m865x(InterfaceC2408p interfaceC2408p, EnumC2393a enumC2393a, Long l) {
        Long l2 = (Long) ((HashMap) this.f799a).put(enumC2393a, l);
        if (l2 == null || l2.longValue() == l.longValue()) {
            return;
        }
        throw new DateTimeException("Conflict found: " + enumC2393a + " " + l2 + " differs from " + enumC2393a + " " + l + " while resolving  " + interfaceC2408p);
    }
}
