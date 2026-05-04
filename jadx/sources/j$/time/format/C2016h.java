package j$.time.format;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.LocalDateTime;
import j$.time.ZoneOffset;
import j$.time.temporal.EnumC2047a;
import j$.time.temporal.InterfaceC2060n;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: renamed from: j$.time.format.h */
/* JADX INFO: loaded from: classes2.dex */
public final class C2016h implements InterfaceC2014f {
    @Override // j$.time.format.InterfaceC2014f
    /* JADX INFO: renamed from: h */
    public final boolean mo596h(C2026r c2026r, StringBuilder sb) {
        Long lM612a = c2026r.m612a(EnumC2047a.INSTANT_SECONDS);
        InterfaceC2060n interfaceC2060n = c2026r.f546a;
        EnumC2047a enumC2047a = EnumC2047a.NANO_OF_SECOND;
        Long lValueOf = interfaceC2060n.mo455e(enumC2047a) ? Long.valueOf(interfaceC2060n.mo460w(enumC2047a)) : null;
        int i = 0;
        if (lM612a == null) {
            return false;
        }
        long jLongValue = lM612a.longValue();
        int iM661a = enumC2047a.f592b.m661a(lValueOf != null ? lValueOf.longValue() : 0L, enumC2047a);
        if (jLongValue >= -62167219200L) {
            long j = jLongValue - 253402300800L;
            long jM414T = AbstractC1965a.m414T(j, 315569520000L) + 1;
            LocalDateTime localDateTimeM495F = LocalDateTime.m495F(AbstractC1965a.m413S(j, 315569520000L) - 62167219200L, 0, ZoneOffset.UTC);
            if (jM414T > 0) {
                sb.append(SignatureVisitor.EXTENDS);
                sb.append(jM414T);
            }
            sb.append(localDateTimeM495F);
            if (localDateTimeM495F.f414b.f564c == 0) {
                sb.append(":00");
            }
        } else {
            long j2 = jLongValue + 62167219200L;
            long j3 = j2 / 315569520000L;
            long j4 = j2 % 315569520000L;
            LocalDateTime localDateTimeM495F2 = LocalDateTime.m495F(j4 - 62167219200L, 0, ZoneOffset.UTC);
            int length = sb.length();
            sb.append(localDateTimeM495F2);
            if (localDateTimeM495F2.f414b.f564c == 0) {
                sb.append(":00");
            }
            if (j3 < 0) {
                if (localDateTimeM495F2.f413a.getYear() == -10000) {
                    sb.replace(length, length + 2, Long.toString(j3 - 1));
                } else if (j4 == 0) {
                    sb.insert(length, j3);
                } else {
                    sb.insert(length + 1, Math.abs(j3));
                }
            }
        }
        if (iM661a > 0) {
            sb.append('.');
            int i2 = 100000000;
            while (true) {
                if (iM661a <= 0 && i % 3 == 0 && i >= -2) {
                    break;
                }
                int i3 = iM661a / i2;
                sb.append((char) (i3 + 48));
                iM661a -= i3 * i2;
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
