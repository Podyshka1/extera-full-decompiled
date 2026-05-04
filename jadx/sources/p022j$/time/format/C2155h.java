package p022j$.time.format;

import org.mvel2.asm.signature.SignatureVisitor;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.LocalDateTime;
import p022j$.time.ZoneOffset;
import p022j$.time.temporal.EnumC2186a;
import p022j$.time.temporal.InterfaceC2199n;

/* JADX INFO: renamed from: j$.time.format.h */
/* JADX INFO: loaded from: classes2.dex */
public final class C2155h implements InterfaceC2153f {
    @Override // p022j$.time.format.InterfaceC2153f
    /* JADX INFO: renamed from: h */
    public final boolean mo719h(C2165r c2165r, StringBuilder sb) {
        Long lM735a = c2165r.m735a(EnumC2186a.INSTANT_SECONDS);
        InterfaceC2199n interfaceC2199n = c2165r.f781a;
        EnumC2186a enumC2186a = EnumC2186a.NANO_OF_SECOND;
        Long lValueOf = interfaceC2199n.mo575e(enumC2186a) ? Long.valueOf(interfaceC2199n.mo580w(enumC2186a)) : null;
        int i = 0;
        if (lM735a == null) {
            return false;
        }
        long jLongValue = lM735a.longValue();
        int iM786a = enumC2186a.f827b.m786a(lValueOf != null ? lValueOf.longValue() : 0L, enumC2186a);
        if (jLongValue >= -62167219200L) {
            long j = jLongValue - 253402300800L;
            long jM534T = AbstractC2104a.m534T(j, 315569520000L) + 1;
            LocalDateTime localDateTimeM616F = LocalDateTime.m616F(AbstractC2104a.m533S(j, 315569520000L) - 62167219200L, 0, ZoneOffset.UTC);
            if (jM534T > 0) {
                sb.append(SignatureVisitor.EXTENDS);
                sb.append(jM534T);
            }
            sb.append(localDateTimeM616F);
            if (localDateTimeM616F.f646b.f799c == 0) {
                sb.append(":00");
            }
        } else {
            long j2 = jLongValue + 62167219200L;
            long j3 = j2 / 315569520000L;
            long j4 = j2 % 315569520000L;
            LocalDateTime localDateTimeM616F2 = LocalDateTime.m616F(j4 - 62167219200L, 0, ZoneOffset.UTC);
            int length = sb.length();
            sb.append(localDateTimeM616F2);
            if (localDateTimeM616F2.f646b.f799c == 0) {
                sb.append(":00");
            }
            if (j3 < 0) {
                if (localDateTimeM616F2.f645a.getYear() == -10000) {
                    sb.replace(length, length + 2, Long.toString(j3 - 1));
                } else if (j4 == 0) {
                    sb.insert(length, j3);
                } else {
                    sb.insert(length + 1, Math.abs(j3));
                }
            }
        }
        if (iM786a > 0) {
            sb.append('.');
            int i2 = 100000000;
            while (true) {
                if (iM786a <= 0 && i % 3 == 0 && i >= -2) {
                    break;
                }
                int i3 = iM786a / i2;
                sb.append((char) (i3 + 48));
                iM786a -= i3 * i2;
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
