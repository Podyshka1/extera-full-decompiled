package j$.time.format;

import com.google.android.gms.cast.framework.media.NotificationOptions;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.LocalTime;
import j$.time.ZoneOffset;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2404l;
import java.util.Locale;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: renamed from: j$.time.format.g */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2361g implements InterfaceC2359e {
    @Override // j$.time.format.InterfaceC2359e
    /* JADX INFO: renamed from: D */
    public final int mo818D(C2372r c2372r, CharSequence charSequence, int i) {
        C2371q c2371q = new C2371q();
        c2371q.m835a(DateTimeFormatter.ISO_LOCAL_DATE);
        c2371q.m837c('T');
        EnumC2393a enumC2393a = EnumC2393a.HOUR_OF_DAY;
        c2371q.m841g(enumC2393a, 2);
        c2371q.m837c(':');
        EnumC2393a enumC2393a2 = EnumC2393a.MINUTE_OF_HOUR;
        c2371q.m841g(enumC2393a2, 2);
        c2371q.m837c(':');
        EnumC2393a enumC2393a3 = EnumC2393a.SECOND_OF_MINUTE;
        c2371q.m841g(enumC2393a3, 2);
        EnumC2393a enumC2393a4 = EnumC2393a.NANO_OF_SECOND;
        c2371q.m836b(new C2360f(enumC2393a4));
        c2371q.m837c('Z');
        C2358d c2358d = c2371q.m846l(Locale.getDefault(), EnumC2380z.SMART, null).f724a;
        if (c2358d.f743b) {
            c2358d = new C2358d(c2358d.f742a, false);
        }
        C2372r c2372r2 = new C2372r(c2372r.f782a);
        c2372r2.f783b = c2372r.f783b;
        c2372r2.f784c = c2372r.f784c;
        int iMo818D = c2358d.mo818D(c2372r2, charSequence, i);
        if (iMo818D < 0) {
            return iMo818D;
        }
        long jLongValue = c2372r2.m850d(EnumC2393a.YEAR).longValue();
        int iIntValue = c2372r2.m850d(EnumC2393a.MONTH_OF_YEAR).intValue();
        int iIntValue2 = c2372r2.m850d(EnumC2393a.DAY_OF_MONTH).intValue();
        int iIntValue3 = c2372r2.m850d(enumC2393a).intValue();
        int iIntValue4 = c2372r2.m850d(enumC2393a2).intValue();
        Long lM850d = c2372r2.m850d(enumC2393a3);
        Long lM850d2 = c2372r2.m850d(enumC2393a4);
        int iIntValue5 = lM850d != null ? lM850d.intValue() : 0;
        int iIntValue6 = lM850d2 != null ? lM850d2.intValue() : 0;
        int i2 = 1;
        if (iIntValue3 == 24 && iIntValue4 == 0 && iIntValue5 == 0 && iIntValue6 == 0) {
            iIntValue3 = 0;
        } else {
            if (iIntValue3 == 23 && iIntValue4 == 59 && iIntValue5 == 60) {
                c2372r.m849c().f802d = true;
                iIntValue5 = 59;
            }
            i2 = 0;
        }
        int i3 = ((int) jLongValue) % 10000;
        try {
            LocalDateTime localDateTime = LocalDateTime.f615c;
            LocalDate localDateOf = LocalDate.of(i3, iIntValue, iIntValue2);
            LocalTime localTimeOf = LocalTime.of(iIntValue3, iIntValue4, iIntValue5, 0);
            return c2372r.m852f(enumC2393a4, iIntValue6, i, c2372r.m852f(EnumC2393a.INSTANT_SECONDS, new LocalDateTime(localDateOf, localTimeOf).a0(localDateOf.plusDays(i2), localTimeOf).toEpochSecond(ZoneOffset.UTC) + Math.multiplyExact(jLongValue / NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS, 315569520000L), i, iMo818D));
        } catch (RuntimeException unused) {
            return ~i;
        }
    }

    @Override // j$.time.format.InterfaceC2359e
    /* JADX INFO: renamed from: s */
    public final boolean mo819s(C2374t c2374t, StringBuilder sb) {
        Long lM854a = c2374t.m854a(EnumC2393a.INSTANT_SECONDS);
        InterfaceC2404l interfaceC2404l = c2374t.f790a;
        EnumC2393a enumC2393a = EnumC2393a.NANO_OF_SECOND;
        Long lValueOf = interfaceC2404l.mo555i(enumC2393a) ? Long.valueOf(interfaceC2404l.mo556k(enumC2393a)) : null;
        int i = 0;
        if (lM854a == null) {
            return false;
        }
        long jLongValue = lM854a.longValue();
        int iM885a = enumC2393a.f832b.m885a(lValueOf != null ? lValueOf.longValue() : 0L, enumC2393a);
        if (jLongValue >= -62167219200L) {
            long j = jLongValue - 253402300800L;
            long jFloorDiv = Math.floorDiv(j, 315569520000L) + 1;
            LocalDateTime localDateTimeM696K = LocalDateTime.m696K(Math.floorMod(j, 315569520000L) - 62167219200L, 0, ZoneOffset.UTC);
            if (jFloorDiv > 0) {
                sb.append(SignatureVisitor.EXTENDS);
                sb.append(jFloorDiv);
            }
            sb.append(localDateTimeM696K);
            if (localDateTimeM696K.f618b.getSecond() == 0) {
                sb.append(":00");
            }
        } else {
            long j2 = jLongValue + 62167219200L;
            long j3 = j2 / 315569520000L;
            long j4 = j2 % 315569520000L;
            LocalDateTime localDateTimeM696K2 = LocalDateTime.m696K(j4 - 62167219200L, 0, ZoneOffset.UTC);
            int length = sb.length();
            sb.append(localDateTimeM696K2);
            if (localDateTimeM696K2.f618b.getSecond() == 0) {
                sb.append(":00");
            }
            if (j3 < 0) {
                if (localDateTimeM696K2.f617a.getYear() == -10000) {
                    sb.replace(length, length + 2, Long.toString(j3 - 1));
                } else if (j4 == 0) {
                    sb.insert(length, j3);
                } else {
                    sb.insert(length + 1, Math.abs(j3));
                }
            }
        }
        if (iM885a > 0) {
            sb.append('.');
            int i2 = 100000000;
            while (true) {
                if (iM885a <= 0 && i % 3 == 0 && i >= -2) {
                    break;
                }
                int i3 = iM885a / i2;
                sb.append((char) (i3 + 48));
                iM885a -= i3 * i2;
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
