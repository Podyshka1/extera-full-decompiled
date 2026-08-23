package j$.time.format;

import j$.time.C2162j;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.ZoneOffset;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2184l;
import java.util.Locale;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: renamed from: j$.time.format.g */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2139g implements InterfaceC2137e {
    @Override // j$.time.format.InterfaceC2137e
    /* JADX INFO: renamed from: B */
    public final int mo636B(C2150r c2150r, CharSequence charSequence, int i) {
        C2149q c2149q = new C2149q();
        c2149q.m653a(DateTimeFormatter.ISO_LOCAL_DATE);
        c2149q.m655c('T');
        EnumC2173a enumC2173a = EnumC2173a.HOUR_OF_DAY;
        c2149q.m659g(enumC2173a, 2);
        c2149q.m655c(':');
        EnumC2173a enumC2173a2 = EnumC2173a.MINUTE_OF_HOUR;
        c2149q.m659g(enumC2173a2, 2);
        c2149q.m655c(':');
        EnumC2173a enumC2173a3 = EnumC2173a.SECOND_OF_MINUTE;
        c2149q.m659g(enumC2173a3, 2);
        EnumC2173a enumC2173a4 = EnumC2173a.NANO_OF_SECOND;
        c2149q.m654b(new C2138f(enumC2173a4));
        c2149q.m655c('Z');
        C2136d c2136d = c2149q.m664l(Locale.getDefault(), EnumC2158z.SMART, null).f564a;
        if (c2136d.f583b) {
            c2136d = new C2136d(c2136d.f582a, false);
        }
        C2150r c2150r2 = new C2150r(c2150r.f622a);
        c2150r2.f623b = c2150r.f623b;
        c2150r2.f624c = c2150r.f624c;
        int iMo636B = c2136d.mo636B(c2150r2, charSequence, i);
        if (iMo636B < 0) {
            return iMo636B;
        }
        long jLongValue = c2150r2.m668d(EnumC2173a.YEAR).longValue();
        int iIntValue = c2150r2.m668d(EnumC2173a.MONTH_OF_YEAR).intValue();
        int iIntValue2 = c2150r2.m668d(EnumC2173a.DAY_OF_MONTH).intValue();
        int iIntValue3 = c2150r2.m668d(enumC2173a).intValue();
        int iIntValue4 = c2150r2.m668d(enumC2173a2).intValue();
        Long lM668d = c2150r2.m668d(enumC2173a3);
        Long lM668d2 = c2150r2.m668d(enumC2173a4);
        int iIntValue5 = lM668d != null ? lM668d.intValue() : 0;
        int iIntValue6 = lM668d2 != null ? lM668d2.intValue() : 0;
        int i2 = 1;
        if (iIntValue3 == 24 && iIntValue4 == 0 && iIntValue5 == 0 && iIntValue6 == 0) {
            iIntValue3 = 0;
        } else {
            if (iIntValue3 == 23 && iIntValue4 == 59 && iIntValue5 == 60) {
                c2150r.m667c().f642d = true;
                iIntValue5 = 59;
            }
            i2 = 0;
        }
        int i3 = ((int) jLongValue) % 10000;
        try {
            LocalDateTime localDateTime = LocalDateTime.f474c;
            LocalDate localDateOf = LocalDate.of(i3, iIntValue, iIntValue2);
            C2162j c2162jM695P = C2162j.m695P(iIntValue3, iIntValue4, iIntValue5, 0);
            return c2150r.m670f(enumC2173a4, iIntValue6, i, c2150r.m670f(EnumC2173a.INSTANT_SECONDS, new LocalDateTime(localDateOf, c2162jM695P).a0(localDateOf.plusDays(i2), c2162jM695P).toEpochSecond(ZoneOffset.UTC) + Math.multiplyExact(jLongValue / 10000, 315569520000L), i, iMo636B));
        } catch (RuntimeException unused) {
            return ~i;
        }
    }

    @Override // j$.time.format.InterfaceC2137e
    /* JADX INFO: renamed from: t */
    public final boolean mo637t(C2152t c2152t, StringBuilder sb) {
        Long lM672a = c2152t.m672a(EnumC2173a.INSTANT_SECONDS);
        InterfaceC2184l interfaceC2184l = c2152t.f630a;
        EnumC2173a enumC2173a = EnumC2173a.NANO_OF_SECOND;
        Long lValueOf = interfaceC2184l.mo485i(enumC2173a) ? Long.valueOf(interfaceC2184l.mo486k(enumC2173a)) : null;
        int i = 0;
        if (lM672a == null) {
            return false;
        }
        long jLongValue = lM672a.longValue();
        int iM728a = enumC2173a.f681b.m728a(lValueOf != null ? lValueOf.longValue() : 0L, enumC2173a);
        if (jLongValue >= -62167219200L) {
            long j = jLongValue - 253402300800L;
            long jFloorDiv = Math.floorDiv(j, 315569520000L) + 1;
            LocalDateTime localDateTimeM519P = LocalDateTime.m519P(Math.floorMod(j, 315569520000L) - 62167219200L, 0, ZoneOffset.UTC);
            if (jFloorDiv > 0) {
                sb.append(SignatureVisitor.EXTENDS);
                sb.append(jFloorDiv);
            }
            sb.append(localDateTimeM519P);
            if (localDateTimeM519P.f477b.f657c == 0) {
                sb.append(":00");
            }
        } else {
            long j2 = jLongValue + 62167219200L;
            long j3 = j2 / 315569520000L;
            long j4 = j2 % 315569520000L;
            LocalDateTime localDateTimeM519P2 = LocalDateTime.m519P(j4 - 62167219200L, 0, ZoneOffset.UTC);
            int length = sb.length();
            sb.append(localDateTimeM519P2);
            if (localDateTimeM519P2.f477b.f657c == 0) {
                sb.append(":00");
            }
            if (j3 < 0) {
                if (localDateTimeM519P2.f476a.getYear() == -10000) {
                    sb.replace(length, length + 2, Long.toString(j3 - 1));
                } else if (j4 == 0) {
                    sb.insert(length, j3);
                } else {
                    sb.insert(length + 1, Math.abs(j3));
                }
            }
        }
        if (iM728a > 0) {
            sb.append('.');
            int i2 = 100000000;
            while (true) {
                if (iM728a <= 0 && i % 3 == 0 && i >= -2) {
                    break;
                }
                int i3 = iM728a / i2;
                sb.append((char) (i3 + 48));
                iM728a -= i3 * i2;
                i2 /= 10;
                i++;
            }
        }
        sb.append('Z');
        return true;
    }

    public final String toString() {
        return "Instant()";
    }
}
