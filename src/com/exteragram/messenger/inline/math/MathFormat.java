package com.exteragram.messenger.inline.math;

import java.math.BigDecimal;
import java.math.MathContext;
import java.math.RoundingMode;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlin.text.Typography;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\f\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J!\u0010\n\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ)\u0010\u0010\u001a\u0004\u0018\u00010\u00042\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J1\u0010\u0014\u001a\u0004\u0018\u00010\u00042\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0014\u0010\u0015J'\u0010\u0016\u001a\u0004\u0018\u00010\u00042\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0016\u0010\u0011J\u001f\u0010\u0018\u001a\u0004\u0018\u00010\u00042\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u0012¢\u0006\u0004\b\u0018\u0010\u0019¨\u0006\u001a"}, d2 = {"Lcom/exteragram/messenger/inline/math/MathFormat;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "plain", "group", "(Ljava/lang/String;)Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "decimalSeparator", "finish", "(Ljava/lang/String;C)Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "value", _UrlKt.FRAGMENT_ENCODE_SET, "grouping", "format", "(DCZ)Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "fractionDigits", "formatMoney", "(DICZ)Ljava/lang/String;", "formatMeasure", "radix", "formatBase", "(DI)Ljava/lang/String;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMathFormat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MathFormat.kt\ncom/exteragram/messenger/inline/math/MathFormat\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,143:1\n1#2:144\n*E\n"})
public final class MathFormat {
    public static final MathFormat INSTANCE = new MathFormat();

    private MathFormat() {
    }

    public final String format(double value, char decimalSeparator, boolean grouping) {
        if (Double.isNaN(value) || Double.isInfinite(value)) {
            return null;
        }
        double dAbs = Math.abs(value);
        if (dAbs >= 1.0E12d) {
            return null;
        }
        if (dAbs != 0.0d && dAbs < 1.0E-9d) {
            return null;
        }
        String plainString = MathFormat$$ExternalSyntheticBackportWithForwarding0.m260m(BigDecimal.valueOf(value).round(new MathContext(12))).toPlainString();
        if (grouping) {
            plainString = group(plainString);
        }
        return finish(plainString, decimalSeparator);
    }

    public final String formatMoney(double value, int fractionDigits, char decimalSeparator, boolean grouping) {
        if (Double.isNaN(value) || Double.isInfinite(value)) {
            return null;
        }
        double dAbs = Math.abs(value);
        if (dAbs >= 1.0E12d) {
            return null;
        }
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(value);
        if (fractionDigits >= 0) {
            BigDecimal scale = bigDecimalValueOf.setScale(fractionDigits, RoundingMode.HALF_UP);
            if (scale.signum() != 0 || dAbs == 0.0d) {
                if (MathFormat$$ExternalSyntheticBackportWithForwarding0.m260m(scale).scale() <= 0) {
                    scale = scale.setScale(0);
                }
                String plainString = scale.toPlainString();
                if (grouping) {
                    plainString = group(plainString);
                }
                return finish(plainString, decimalSeparator);
            }
        }
        if (dAbs != 0.0d && dAbs < 1.0E-9d) {
            return null;
        }
        String plainString2 = MathFormat$$ExternalSyntheticBackportWithForwarding0.m260m(bigDecimalValueOf.round(new MathContext(Math.max(6, bigDecimalValueOf.precision() - bigDecimalValueOf.scale())))).toPlainString();
        if (grouping) {
            plainString2 = group(plainString2);
        }
        return finish(plainString2, decimalSeparator);
    }

    public final String formatMeasure(double value, char decimalSeparator, boolean grouping) {
        BigDecimal bigDecimalRound;
        if (Double.isNaN(value) || Double.isInfinite(value)) {
            return null;
        }
        double dAbs = Math.abs(value);
        if (dAbs >= 1.0E12d) {
            return null;
        }
        if (dAbs != 0.0d && dAbs < 1.0E-9d) {
            return null;
        }
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(value);
        if (dAbs >= 1.0d) {
            bigDecimalRound = bigDecimalValueOf.setScale(2, RoundingMode.HALF_UP);
        } else {
            bigDecimalRound = bigDecimalValueOf.round(new MathContext(3));
        }
        String plainString = MathFormat$$ExternalSyntheticBackportWithForwarding0.m260m(bigDecimalRound).toPlainString();
        if (grouping) {
            plainString = group(plainString);
        }
        return finish(plainString, decimalSeparator);
    }

    public final String formatBase(double value, int radix) {
        String str;
        if (Double.isNaN(value) || Double.isInfinite(value) || value != Math.floor(value) || Math.abs(value) > 9.007199254740992E15d) {
            return null;
        }
        long j = (long) value;
        String str2 = _UrlKt.FRAGMENT_ENCODE_SET;
        if (radix == 2) {
            str = "0b";
        } else if (radix == 8) {
            str = "0o";
        } else if (radix != 16) {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        } else {
            str = "0x";
        }
        String upperCase = Long.toString(Math.abs(j), radix).toUpperCase(Locale.ROOT);
        if (j < 0) {
            str2 = "-";
        }
        return str2 + str + upperCase;
    }

    /* JADX WARN: Type inference failed for: r9v2, types: [boolean] */
    private final String group(String plain) {
        ?? StartsWith$default = StringsKt.startsWith$default((CharSequence) plain, SignatureVisitor.SUPER, false, 2, (Object) null);
        int iIndexOf$default = StringsKt.indexOf$default((CharSequence) plain, '.', 0, false, 6, (Object) null);
        if (iIndexOf$default < 0) {
            iIndexOf$default = plain.length();
        }
        int i = iIndexOf$default - (StartsWith$default == true ? 1 : 0);
        if (i <= 3) {
            return plain;
        }
        StringBuilder sb = new StringBuilder(plain.length() + ((i - 1) / 3));
        sb.append((CharSequence) plain, 0, StartsWith$default == true ? 1 : 0);
        for (int i2 = StartsWith$default == true ? 1 : 0; i2 < iIndexOf$default; i2++) {
            if (i2 > StartsWith$default && (iIndexOf$default - i2) % 3 == 0) {
                sb.append(Typography.nbsp);
            }
            sb.append(plain.charAt(i2));
        }
        sb.append((CharSequence) plain, iIndexOf$default, plain.length());
        return sb.toString();
    }

    private final String finish(String plain, char decimalSeparator) {
        if (Intrinsics.areEqual(plain, "-0")) {
            plain = MVEL.VERSION_SUB;
        }
        String str = plain;
        if (str.length() > 24) {
            return null;
        }
        return decimalSeparator == '.' ? str : StringsKt.replace$default(str, '.', decimalSeparator, false, 4, (Object) null);
    }
}
