package j$.time.format;

import com.google.android.gms.cast.framework.media.NotificationOptions;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.LocalTime;
import j$.time.ZoneOffset;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2265l;
import java.util.Locale;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: renamed from: j$.time.format.g */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2221g implements InterfaceC2219e {
    @Override // j$.time.format.InterfaceC2219e
    /* JADX INFO: renamed from: D */
    public final int mo774D(C2232r c2232r, CharSequence charSequence, int i) {
        C2231q c2231q = new C2231q();
        c2231q.m791a(DateTimeFormatter.ISO_LOCAL_DATE);
        c2231q.m793c('T');
        EnumC2254a enumC2254a = EnumC2254a.HOUR_OF_DAY;
        c2231q.m797g(enumC2254a, 2);
        c2231q.m793c(':');
        EnumC2254a enumC2254a2 = EnumC2254a.MINUTE_OF_HOUR;
        c2231q.m797g(enumC2254a2, 2);
        c2231q.m793c(':');
        EnumC2254a enumC2254a3 = EnumC2254a.SECOND_OF_MINUTE;
        c2231q.m797g(enumC2254a3, 2);
        EnumC2254a enumC2254a4 = EnumC2254a.NANO_OF_SECOND;
        c2231q.m792b(new C2220f(enumC2254a4));
        c2231q.m793c('Z');
        C2218d c2218d = c2231q.m802l(Locale.getDefault(), EnumC2240z.SMART, null).f720a;
        if (c2218d.f739b) {
            c2218d = new C2218d(c2218d.f738a, false);
        }
        C2232r c2232r2 = new C2232r(c2232r.f778a);
        c2232r2.f779b = c2232r.f779b;
        c2232r2.f780c = c2232r.f780c;
        int iMo774D = c2218d.mo774D(c2232r2, charSequence, i);
        if (iMo774D < 0) {
            return iMo774D;
        }
        long jLongValue = c2232r2.m806d(EnumC2254a.YEAR).longValue();
        int iIntValue = c2232r2.m806d(EnumC2254a.MONTH_OF_YEAR).intValue();
        int iIntValue2 = c2232r2.m806d(EnumC2254a.DAY_OF_MONTH).intValue();
        int iIntValue3 = c2232r2.m806d(enumC2254a).intValue();
        int iIntValue4 = c2232r2.m806d(enumC2254a2).intValue();
        Long lM806d = c2232r2.m806d(enumC2254a3);
        Long lM806d2 = c2232r2.m806d(enumC2254a4);
        int iIntValue5 = lM806d != null ? lM806d.intValue() : 0;
        int iIntValue6 = lM806d2 != null ? lM806d2.intValue() : 0;
        int i2 = 1;
        if (iIntValue3 == 24 && iIntValue4 == 0 && iIntValue5 == 0 && iIntValue6 == 0) {
            iIntValue3 = 0;
        } else {
            if (iIntValue3 == 23 && iIntValue4 == 59 && iIntValue5 == 60) {
                c2232r.m805c().f798d = true;
                iIntValue5 = 59;
            }
            i2 = 0;
        }
        int i3 = ((int) jLongValue) % 10000;
        try {
            LocalDateTime localDateTime = LocalDateTime.f614c;
            LocalDate localDateOf = LocalDate.of(i3, iIntValue, iIntValue2);
            LocalTime localTimeOf = LocalTime.of(iIntValue3, iIntValue4, iIntValue5, 0);
            return c2232r.m808f(enumC2254a4, iIntValue6, i, c2232r.m808f(EnumC2254a.INSTANT_SECONDS, new LocalDateTime(localDateOf, localTimeOf).c0(localDateOf.plusDays(i2), localTimeOf).toEpochSecond(ZoneOffset.UTC) + Math.multiplyExact(jLongValue / NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS, 315569520000L), i, iMo774D));
        } catch (RuntimeException unused) {
            return ~i;
        }
    }

    @Override // j$.time.format.InterfaceC2219e
    /* JADX INFO: renamed from: s */
    public final boolean mo775s(C2234t c2234t, StringBuilder sb) {
        Long lM810a = c2234t.m810a(EnumC2254a.INSTANT_SECONDS);
        InterfaceC2265l interfaceC2265l = c2234t.f786a;
        EnumC2254a enumC2254a = EnumC2254a.NANO_OF_SECOND;
        Long lValueOf = interfaceC2265l.mo531i(enumC2254a) ? Long.valueOf(interfaceC2265l.mo532k(enumC2254a)) : null;
        int i = 0;
        if (lM810a == null) {
            return false;
        }
        long jLongValue = lM810a.longValue();
        int iM837a = enumC2254a.f830b.m837a(lValueOf != null ? lValueOf.longValue() : 0L, enumC2254a);
        if (jLongValue >= -62167219200L) {
            long j = jLongValue - 253402300800L;
            long jFloorDiv = Math.floorDiv(j, 315569520000L) + 1;
            LocalDateTime localDateTimeM671K = LocalDateTime.m671K(Math.floorMod(j, 315569520000L) - 62167219200L, 0, ZoneOffset.UTC);
            if (jFloorDiv > 0) {
                sb.append(SignatureVisitor.EXTENDS);
                sb.append(jFloorDiv);
            }
            sb.append(localDateTimeM671K);
            if (localDateTimeM671K.f617b.getSecond() == 0) {
                sb.append(":00");
            }
        } else {
            long j2 = jLongValue + 62167219200L;
            long j3 = j2 / 315569520000L;
            long j4 = j2 % 315569520000L;
            LocalDateTime localDateTimeM671K2 = LocalDateTime.m671K(j4 - 62167219200L, 0, ZoneOffset.UTC);
            int length = sb.length();
            sb.append(localDateTimeM671K2);
            if (localDateTimeM671K2.f617b.getSecond() == 0) {
                sb.append(":00");
            }
            if (j3 < 0) {
                if (localDateTimeM671K2.f616a.getYear() == -10000) {
                    sb.replace(length, length + 2, Long.toString(j3 - 1));
                } else if (j4 == 0) {
                    sb.insert(length, j3);
                } else {
                    sb.insert(length + 1, Math.abs(j3));
                }
            }
        }
        if (iM837a > 0) {
            sb.append('.');
            int i2 = 100000000;
            while (true) {
                if (iM837a <= 0 && i % 3 == 0 && i >= -2) {
                    break;
                }
                int i3 = iM837a / i2;
                sb.append((char) (i3 + 48));
                iM837a -= i3 * i2;
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
