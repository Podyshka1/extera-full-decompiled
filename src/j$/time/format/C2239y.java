package j$.time.format;

import j$.nio.file.C2148b;
import j$.time.AbstractC2185c;
import j$.time.C2184b;
import j$.time.C2213e;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.Period;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.chrono.InterfaceC2187b;
import j$.time.chrono.InterfaceC2196k;
import j$.time.temporal.AbstractC2270q;
import j$.time.temporal.C2271r;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2265l;
import j$.time.temporal.InterfaceC2269p;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: renamed from: j$.time.format.y */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2239y implements InterfaceC2265l {

    /* JADX INFO: renamed from: b */
    public ZoneId f796b;

    /* JADX INFO: renamed from: c */
    public InterfaceC2196k f797c;

    /* JADX INFO: renamed from: d */
    public boolean f798d;

    /* JADX INFO: renamed from: e */
    public EnumC2240z f799e;

    /* JADX INFO: renamed from: f */
    public InterfaceC2187b f800f;

    /* JADX INFO: renamed from: g */
    public LocalTime f801g;

    /* JADX INFO: renamed from: a */
    public final Map f795a = new HashMap();

    /* JADX INFO: renamed from: h */
    public Period f802h = Period.f635d;

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: d */
    public final Object mo530d(C2213e c2213e) {
        if (c2213e == AbstractC2270q.f847a) {
            return this.f796b;
        }
        if (c2213e == AbstractC2270q.f848b) {
            return this.f797c;
        }
        if (c2213e == AbstractC2270q.f852f) {
            InterfaceC2187b interfaceC2187b = this.f800f;
            if (interfaceC2187b != null) {
                return LocalDate.m658I(interfaceC2187b);
            }
            return null;
        }
        if (c2213e == AbstractC2270q.f853g) {
            return this.f801g;
        }
        if (c2213e == AbstractC2270q.f850d) {
            Long l = (Long) ((HashMap) this.f795a).get(EnumC2254a.OFFSET_SECONDS);
            if (l != null) {
                return ZoneOffset.ofTotalSeconds(l.intValue());
            }
            ZoneId zoneId = this.f796b;
            return zoneId instanceof ZoneOffset ? zoneId : c2213e.m766l(this);
        }
        if (c2213e == AbstractC2270q.f851e) {
            return c2213e.m766l(this);
        }
        if (c2213e == AbstractC2270q.f849c) {
            return null;
        }
        return c2213e.m766l(this);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: i */
    public final boolean mo531i(InterfaceC2269p interfaceC2269p) {
        if (((HashMap) this.f795a).containsKey(interfaceC2269p)) {
            return true;
        }
        InterfaceC2187b interfaceC2187b = this.f800f;
        if (interfaceC2187b != null && interfaceC2187b.mo531i(interfaceC2269p)) {
            return true;
        }
        LocalTime localTime = this.f801g;
        if (localTime == null || !localTime.mo531i(interfaceC2269p)) {
            return (interfaceC2269p == null || (interfaceC2269p instanceof EnumC2254a) || !interfaceC2269p.mo833s(this)) ? false : true;
        }
        return true;
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: k */
    public final long mo532k(InterfaceC2269p interfaceC2269p) {
        Objects.requireNonNull(interfaceC2269p, "field");
        Long l = (Long) ((HashMap) this.f795a).get(interfaceC2269p);
        if (l != null) {
            return l.longValue();
        }
        InterfaceC2187b interfaceC2187b = this.f800f;
        if (interfaceC2187b != null && interfaceC2187b.mo531i(interfaceC2269p)) {
            return this.f800f.mo532k(interfaceC2269p);
        }
        LocalTime localTime = this.f801g;
        if (localTime != null && localTime.mo531i(interfaceC2269p)) {
            return this.f801g.mo532k(interfaceC2269p);
        }
        if (interfaceC2269p instanceof EnumC2254a) {
            throw new C2271r(AbstractC2185c.m719a("Unsupported field: ", interfaceC2269p));
        }
        return interfaceC2269p.mo831S(this);
    }

    /* JADX INFO: renamed from: p */
    public final void m814p(InterfaceC2265l interfaceC2265l) {
        Iterator it = ((HashMap) this.f795a).entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            InterfaceC2269p interfaceC2269p = (InterfaceC2269p) entry.getKey();
            if (interfaceC2265l.mo531i(interfaceC2269p)) {
                try {
                    long jMo532k = interfaceC2265l.mo532k(interfaceC2269p);
                    long jLongValue = ((Long) entry.getValue()).longValue();
                    if (jMo532k != jLongValue) {
                        throw new C2184b("Conflict found: Field " + interfaceC2269p + " " + jMo532k + " differs from " + interfaceC2269p + " " + jLongValue + " derived from " + interfaceC2265l);
                    }
                    it.remove();
                } catch (RuntimeException unused) {
                    continue;
                }
            }
        }
    }

    /* JADX INFO: renamed from: q */
    public final void m815q() {
        if (((HashMap) this.f795a).containsKey(EnumC2254a.INSTANT_SECONDS)) {
            ZoneId zoneId = this.f796b;
            if (zoneId != null) {
                m816r(zoneId);
                return;
            }
            Long l = (Long) ((HashMap) this.f795a).get(EnumC2254a.OFFSET_SECONDS);
            if (l != null) {
                m816r(ZoneOffset.ofTotalSeconds(l.intValue()));
            }
        }
    }

    /* JADX INFO: renamed from: r */
    public final void m816r(ZoneId zoneId) {
        Map map = this.f795a;
        EnumC2254a enumC2254a = EnumC2254a.INSTANT_SECONDS;
        m820w(this.f797c.mo750W(Instant.m648s(((Long) ((HashMap) map).remove(enumC2254a)).longValue(), 0), zoneId).mo717m());
        m821x(enumC2254a, EnumC2254a.SECOND_OF_DAY, Long.valueOf(r5.toLocalTime().g0()));
    }

    /* JADX INFO: renamed from: s */
    public final void m817s(long j, long j2, long j3, long j4) {
        if (this.f799e == EnumC2240z.LENIENT) {
            long jAddExact = Math.addExact(Math.addExact(Math.addExact(Math.multiplyExact(j, 3600000000000L), Math.multiplyExact(j2, 60000000000L)), Math.multiplyExact(j3, 1000000000L)), j4);
            m819v(LocalTime.m682S(Math.floorMod(jAddExact, 86400000000000L)), Period.m692a(0, 0, (int) Math.floorDiv(jAddExact, 86400000000000L)));
            return;
        }
        EnumC2254a enumC2254a = EnumC2254a.MINUTE_OF_HOUR;
        int iM837a = enumC2254a.f830b.m837a(j2, enumC2254a);
        EnumC2254a enumC2254a2 = EnumC2254a.NANO_OF_SECOND;
        int iM837a2 = enumC2254a2.f830b.m837a(j4, enumC2254a2);
        if (this.f799e == EnumC2240z.SMART && j == 24 && iM837a == 0 && j3 == 0 && iM837a2 == 0) {
            m819v(LocalTime.f620g, Period.m692a(0, 0, 1));
            return;
        }
        EnumC2254a enumC2254a3 = EnumC2254a.HOUR_OF_DAY;
        int iM837a3 = enumC2254a3.f830b.m837a(j, enumC2254a3);
        EnumC2254a enumC2254a4 = EnumC2254a.SECOND_OF_MINUTE;
        m819v(LocalTime.of(iM837a3, iM837a, enumC2254a4.f830b.m837a(j3, enumC2254a4), iM837a2), Period.f635d);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append(this.f795a);
        sb.append(',');
        sb.append(this.f797c);
        if (this.f796b != null) {
            sb.append(',');
            sb.append(this.f796b);
        }
        if (this.f800f != null || this.f801g != null) {
            sb.append(" resolved to ");
            InterfaceC2187b interfaceC2187b = this.f800f;
            if (interfaceC2187b != null) {
                sb.append(interfaceC2187b);
                if (this.f801g != null) {
                    sb.append('T');
                    sb.append(this.f801g);
                }
            } else {
                sb.append(this.f801g);
            }
        }
        return sb.toString();
    }

    /* JADX INFO: renamed from: u */
    public final void m818u() {
        Map map = this.f795a;
        EnumC2254a enumC2254a = EnumC2254a.CLOCK_HOUR_OF_DAY;
        if (((HashMap) map).containsKey(enumC2254a)) {
            long jLongValue = ((Long) ((HashMap) this.f795a).remove(enumC2254a)).longValue();
            EnumC2240z enumC2240z = this.f799e;
            if (enumC2240z == EnumC2240z.STRICT || (enumC2240z == EnumC2240z.SMART && jLongValue != 0)) {
                enumC2254a.a0(jLongValue);
            }
            EnumC2254a enumC2254a2 = EnumC2254a.HOUR_OF_DAY;
            if (jLongValue == 24) {
                jLongValue = 0;
            }
            m821x(enumC2254a, enumC2254a2, Long.valueOf(jLongValue));
        }
        Map map2 = this.f795a;
        EnumC2254a enumC2254a3 = EnumC2254a.CLOCK_HOUR_OF_AMPM;
        if (((HashMap) map2).containsKey(enumC2254a3)) {
            long jLongValue2 = ((Long) ((HashMap) this.f795a).remove(enumC2254a3)).longValue();
            EnumC2240z enumC2240z2 = this.f799e;
            if (enumC2240z2 == EnumC2240z.STRICT || (enumC2240z2 == EnumC2240z.SMART && jLongValue2 != 0)) {
                enumC2254a3.a0(jLongValue2);
            }
            m821x(enumC2254a3, EnumC2254a.HOUR_OF_AMPM, Long.valueOf(jLongValue2 != 12 ? jLongValue2 : 0L));
        }
        Map map3 = this.f795a;
        EnumC2254a enumC2254a4 = EnumC2254a.AMPM_OF_DAY;
        if (((HashMap) map3).containsKey(enumC2254a4)) {
            Map map4 = this.f795a;
            EnumC2254a enumC2254a5 = EnumC2254a.HOUR_OF_AMPM;
            if (((HashMap) map4).containsKey(enumC2254a5)) {
                long jLongValue3 = ((Long) ((HashMap) this.f795a).remove(enumC2254a4)).longValue();
                long jLongValue4 = ((Long) ((HashMap) this.f795a).remove(enumC2254a5)).longValue();
                if (this.f799e == EnumC2240z.LENIENT) {
                    m821x(enumC2254a4, EnumC2254a.HOUR_OF_DAY, Long.valueOf(Math.addExact(Math.multiplyExact(jLongValue3, 12L), jLongValue4)));
                } else {
                    enumC2254a4.a0(jLongValue3);
                    enumC2254a5.a0(jLongValue3);
                    m821x(enumC2254a4, EnumC2254a.HOUR_OF_DAY, Long.valueOf((jLongValue3 * 12) + jLongValue4));
                }
            }
        }
        Map map5 = this.f795a;
        EnumC2254a enumC2254a6 = EnumC2254a.NANO_OF_DAY;
        if (((HashMap) map5).containsKey(enumC2254a6)) {
            long jLongValue5 = ((Long) ((HashMap) this.f795a).remove(enumC2254a6)).longValue();
            if (this.f799e != EnumC2240z.LENIENT) {
                enumC2254a6.a0(jLongValue5);
            }
            m821x(enumC2254a6, EnumC2254a.HOUR_OF_DAY, Long.valueOf(jLongValue5 / 3600000000000L));
            m821x(enumC2254a6, EnumC2254a.MINUTE_OF_HOUR, Long.valueOf((jLongValue5 / 60000000000L) % 60));
            m821x(enumC2254a6, EnumC2254a.SECOND_OF_MINUTE, Long.valueOf((jLongValue5 / 1000000000) % 60));
            m821x(enumC2254a6, EnumC2254a.NANO_OF_SECOND, Long.valueOf(jLongValue5 % 1000000000));
        }
        Map map6 = this.f795a;
        EnumC2254a enumC2254a7 = EnumC2254a.MICRO_OF_DAY;
        if (((HashMap) map6).containsKey(enumC2254a7)) {
            long jLongValue6 = ((Long) ((HashMap) this.f795a).remove(enumC2254a7)).longValue();
            if (this.f799e != EnumC2240z.LENIENT) {
                enumC2254a7.a0(jLongValue6);
            }
            m821x(enumC2254a7, EnumC2254a.SECOND_OF_DAY, Long.valueOf(jLongValue6 / 1000000));
            m821x(enumC2254a7, EnumC2254a.MICRO_OF_SECOND, Long.valueOf(jLongValue6 % 1000000));
        }
        Map map7 = this.f795a;
        EnumC2254a enumC2254a8 = EnumC2254a.MILLI_OF_DAY;
        if (((HashMap) map7).containsKey(enumC2254a8)) {
            long jLongValue7 = ((Long) ((HashMap) this.f795a).remove(enumC2254a8)).longValue();
            if (this.f799e != EnumC2240z.LENIENT) {
                enumC2254a8.a0(jLongValue7);
            }
            m821x(enumC2254a8, EnumC2254a.SECOND_OF_DAY, Long.valueOf(jLongValue7 / 1000));
            m821x(enumC2254a8, EnumC2254a.MILLI_OF_SECOND, Long.valueOf(jLongValue7 % 1000));
        }
        Map map8 = this.f795a;
        EnumC2254a enumC2254a9 = EnumC2254a.SECOND_OF_DAY;
        if (((HashMap) map8).containsKey(enumC2254a9)) {
            long jLongValue8 = ((Long) ((HashMap) this.f795a).remove(enumC2254a9)).longValue();
            if (this.f799e != EnumC2240z.LENIENT) {
                enumC2254a9.a0(jLongValue8);
            }
            m821x(enumC2254a9, EnumC2254a.HOUR_OF_DAY, Long.valueOf(jLongValue8 / 3600));
            m821x(enumC2254a9, EnumC2254a.MINUTE_OF_HOUR, Long.valueOf((jLongValue8 / 60) % 60));
            m821x(enumC2254a9, EnumC2254a.SECOND_OF_MINUTE, Long.valueOf(jLongValue8 % 60));
        }
        Map map9 = this.f795a;
        EnumC2254a enumC2254a10 = EnumC2254a.MINUTE_OF_DAY;
        if (((HashMap) map9).containsKey(enumC2254a10)) {
            long jLongValue9 = ((Long) ((HashMap) this.f795a).remove(enumC2254a10)).longValue();
            if (this.f799e != EnumC2240z.LENIENT) {
                enumC2254a10.a0(jLongValue9);
            }
            m821x(enumC2254a10, EnumC2254a.HOUR_OF_DAY, Long.valueOf(jLongValue9 / 60));
            m821x(enumC2254a10, EnumC2254a.MINUTE_OF_HOUR, Long.valueOf(jLongValue9 % 60));
        }
        Map map10 = this.f795a;
        EnumC2254a enumC2254a11 = EnumC2254a.NANO_OF_SECOND;
        if (((HashMap) map10).containsKey(enumC2254a11)) {
            long jLongValue10 = ((Long) ((HashMap) this.f795a).get(enumC2254a11)).longValue();
            EnumC2240z enumC2240z3 = this.f799e;
            EnumC2240z enumC2240z4 = EnumC2240z.LENIENT;
            if (enumC2240z3 != enumC2240z4) {
                enumC2254a11.a0(jLongValue10);
            }
            Map map11 = this.f795a;
            EnumC2254a enumC2254a12 = EnumC2254a.MICRO_OF_SECOND;
            if (((HashMap) map11).containsKey(enumC2254a12)) {
                long jLongValue11 = ((Long) ((HashMap) this.f795a).remove(enumC2254a12)).longValue();
                if (this.f799e != enumC2240z4) {
                    enumC2254a12.a0(jLongValue11);
                }
                jLongValue10 = (jLongValue10 % 1000) + (jLongValue11 * 1000);
                m821x(enumC2254a12, enumC2254a11, Long.valueOf(jLongValue10));
            }
            Map map12 = this.f795a;
            EnumC2254a enumC2254a13 = EnumC2254a.MILLI_OF_SECOND;
            if (((HashMap) map12).containsKey(enumC2254a13)) {
                long jLongValue12 = ((Long) ((HashMap) this.f795a).remove(enumC2254a13)).longValue();
                if (this.f799e != enumC2240z4) {
                    enumC2254a13.a0(jLongValue12);
                }
                m821x(enumC2254a13, enumC2254a11, Long.valueOf((jLongValue10 % 1000000) + (jLongValue12 * 1000000)));
            }
        }
        Map map13 = this.f795a;
        EnumC2254a enumC2254a14 = EnumC2254a.HOUR_OF_DAY;
        if (((HashMap) map13).containsKey(enumC2254a14)) {
            Map map14 = this.f795a;
            EnumC2254a enumC2254a15 = EnumC2254a.MINUTE_OF_HOUR;
            if (((HashMap) map14).containsKey(enumC2254a15)) {
                Map map15 = this.f795a;
                EnumC2254a enumC2254a16 = EnumC2254a.SECOND_OF_MINUTE;
                if (((HashMap) map15).containsKey(enumC2254a16) && ((HashMap) this.f795a).containsKey(enumC2254a11)) {
                    m817s(((Long) ((HashMap) this.f795a).remove(enumC2254a14)).longValue(), ((Long) ((HashMap) this.f795a).remove(enumC2254a15)).longValue(), ((Long) ((HashMap) this.f795a).remove(enumC2254a16)).longValue(), ((Long) ((HashMap) this.f795a).remove(enumC2254a11)).longValue());
                }
            }
        }
    }

    /* JADX INFO: renamed from: v */
    public final void m819v(LocalTime localTime, Period period) {
        LocalTime localTime2 = this.f801g;
        if (localTime2 == null) {
            this.f801g = localTime;
            this.f802h = period;
            return;
        }
        if (!localTime2.equals(localTime)) {
            C2148b.m613f("Conflict found: Fields resolved to different times: ", this.f801g, " ", localTime);
            return;
        }
        Period period2 = this.f802h;
        period2.getClass();
        Period period3 = Period.f635d;
        if (period2 == period3 || period == period3 || this.f802h.equals(period)) {
            this.f802h = period;
        } else {
            C2148b.m613f("Conflict found: Fields resolved to different excess periods: ", this.f802h, " ", period);
        }
    }

    /* JADX INFO: renamed from: w */
    public final void m820w(InterfaceC2187b interfaceC2187b) {
        InterfaceC2187b interfaceC2187b2 = this.f800f;
        if (interfaceC2187b2 != null) {
            if (interfaceC2187b == null || interfaceC2187b2.equals(interfaceC2187b)) {
                return;
            }
            C2148b.m613f("Conflict found: Fields resolved to two different dates: ", this.f800f, " ", interfaceC2187b);
            return;
        }
        if (interfaceC2187b != null) {
            if (this.f797c.equals(interfaceC2187b.mo667f())) {
                this.f800f = interfaceC2187b;
                return;
            }
            throw new C2184b("ChronoLocalDate must use the effective parsed chronology: " + this.f797c);
        }
    }

    /* JADX INFO: renamed from: x */
    public final void m821x(InterfaceC2269p interfaceC2269p, EnumC2254a enumC2254a, Long l) {
        Long l2 = (Long) ((HashMap) this.f795a).put(enumC2254a, l);
        if (l2 == null || l2.longValue() == l.longValue()) {
            return;
        }
        throw new C2184b("Conflict found: " + enumC2254a + " " + l2 + " differs from " + enumC2254a + " " + l + " while resolving  " + interfaceC2269p);
    }
}
