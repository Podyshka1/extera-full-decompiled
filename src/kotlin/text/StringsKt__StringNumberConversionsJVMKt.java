package kotlin.text;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.MathContext;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000V\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\b\n\u0002\u0010\n\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\f\n\u0002\b\u000e\u001a\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0088\u0004\u001a\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0088\u0004\u001a\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0088\u0004\u001a\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0088\u0004\u001a\u0010\u0010\u0007\u001a\u00020\b*\u0004\u0018\u00010\u0001H\u0087\u0088\u0004\u001a\u000e\u0010\t\u001a\u00020\u0002*\u00020\u0001H\u0087\u0088\u0004\u001a\u0016\u0010\t\u001a\u00020\u0002*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0088\u0004\u001a\u000e\u0010\n\u001a\u00020\u0005*\u00020\u0001H\u0087\u0088\u0004\u001a\u0016\u0010\n\u001a\u00020\u0005*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0088\u0004\u001a\u000e\u0010\u000b\u001a\u00020\u0004*\u00020\u0001H\u0087\u0088\u0004\u001a\u0016\u0010\u000b\u001a\u00020\u0004*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0088\u0004\u001a\u000e\u0010\f\u001a\u00020\u0006*\u00020\u0001H\u0087\u0088\u0004\u001a\u0016\u0010\f\u001a\u00020\u0006*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0088\u0004\u001a\u000e\u0010\r\u001a\u00020\u000e*\u00020\u0001H\u0087\u0088\u0004\u001a\u000e\u0010\u000f\u001a\u00020\u0010*\u00020\u0001H\u0087\u0088\u0004\u001a\u0015\u0010\u0011\u001a\u0004\u0018\u00010\u000e*\u00020\u0001H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0012\u001a\u0015\u0010\u0013\u001a\u0004\u0018\u00010\u0010*\u00020\u0001H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0014\u001a\u000e\u0010\u0015\u001a\u00020\u0016*\u00020\u0001H\u0087\u0088\u0004\u001a\u0016\u0010\u0015\u001a\u00020\u0016*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0088\u0004\u001a\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0016*\u00020\u0001H\u0087\u0080\u0004\u001a\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u0016*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0080\u0004\u001a\u000e\u0010\u0018\u001a\u00020\u0019*\u00020\u0001H\u0087\u0088\u0004\u001a\u0016\u0010\u0018\u001a\u00020\u0019*\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u001bH\u0087\u0088\u0004\u001a\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0019*\u00020\u0001H\u0087\u0080\u0004\u001a\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u0019*\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u001bH\u0087\u0080\u0004\u001a5\u0010\u001d\u001a\u0004\u0018\u0001H\u001e\"\u0004\b\u0000\u0010\u001e2\u0006\u0010\u001f\u001a\u00020\u00012\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u0002H\u001e0!H\u0082\u0088\u0004¢\u0006\u0004\b\"\u0010#\u001a5\u0010$\u001a\u0004\u0018\u0001H\u001e\"\u0004\b\u0000\u0010\u001e2\u0006\u0010\u001f\u001a\u00020\u00012\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u0002H\u001e0!H\u0082\u0088\u0004¢\u0006\u0004\b%\u0010#\u001a\u0017\u0010&\u001a\u00020\b2\u0006\u0010'\u001a\u00020\u0001H\u0082\u0080\u0004¢\u0006\u0002\b(\u001a\u0017\u0010)\u001a\u00020\b2\u0006\u0010'\u001a\u00020\u0001H\u0082\u0080\u0004¢\u0006\u0002\b*\u001a!\u0010+\u001a\u0004\u0018\u00010\u00012\u0006\u0010,\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u0004H\u0083\u0088\u0004¢\u0006\u0002\b.\u001a\u0013\u0010/\u001a\u00020\b*\u000200H\u0083\u0088\u0004¢\u0006\u0002\b1\u001a\u0013\u00102\u001a\u00020\b*\u000200H\u0083\u0088\u0004¢\u0006\u0002\b3\u001a\u0013\u00104\u001a\u00020\u0004*\u000200H\u0083\u0088\u0004¢\u0006\u0002\b5\u001a7\u00106\u001a\u00020\u0004*\u00020\u00012\u0006\u0010,\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u00042\u0012\u00107\u001a\u000e\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020\b0!H\u0083\u0088\u0004¢\u0006\u0002\b8\u001a7\u00109\u001a\u00020\u0004*\u00020\u00012\u0006\u0010,\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u00042\u0012\u00107\u001a\u000e\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020\b0!H\u0083\u0088\u0004¢\u0006\u0002\b:\u001a?\u0010;\u001a\u00020\u0004*\u00020\u00012\u0006\u0010,\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u00042\u0006\u0010<\u001a\u00020\b2\u0012\u00107\u001a\u000e\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020\b0!H\u0083\u0088\u0004¢\u0006\u0002\b=¨\u0006>"}, d2 = {"toString", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "radix", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "toBoolean", _UrlKt.FRAGMENT_ENCODE_SET, "toByte", "toShort", "toInt", "toLong", "toFloat", _UrlKt.FRAGMENT_ENCODE_SET, "toDouble", _UrlKt.FRAGMENT_ENCODE_SET, "toFloatOrNull", "(Ljava/lang/String;)Ljava/lang/Float;", "toDoubleOrNull", "(Ljava/lang/String;)Ljava/lang/Double;", "toBigInteger", "Ljava/math/BigInteger;", "toBigIntegerOrNull", "toBigDecimal", "Ljava/math/BigDecimal;", "mathContext", "Ljava/math/MathContext;", "toBigDecimalOrNull", "screenFloatValue", "T", "str", "parse", "Lkotlin/Function1;", "screenFloatValue$StringsKt__StringNumberConversionsJVMKt", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "screenBigDecimalValue", "screenBigDecimalValue$StringsKt__StringNumberConversionsJVMKt", "isValidFloat", "s", "isValidFloat$StringsKt__StringNumberConversionsJVMKt", "isValidBigDecimal", "isValidBigDecimal$StringsKt__StringNumberConversionsJVMKt", "guessNamedFloatConstant", "start", "endInclusive", "guessNamedFloatConstant$StringsKt__StringNumberConversionsJVMKt", "isAsciiDigit", _UrlKt.FRAGMENT_ENCODE_SET, "isAsciiDigit$StringsKt__StringNumberConversionsJVMKt", "isHexLetter", "isHexLetter$StringsKt__StringNumberConversionsJVMKt", "asciiLetterToLowerCaseCode", "asciiLetterToLowerCaseCode$StringsKt__StringNumberConversionsJVMKt", "advanceWhile", "predicate", "advanceWhile$StringsKt__StringNumberConversionsJVMKt", "backtrackWhile", "backtrackWhile$StringsKt__StringNumberConversionsJVMKt", "advanceAndValidateMantissa", "hexFormat", "advanceAndValidateMantissa$StringsKt__StringNumberConversionsJVMKt", "kotlin-stdlib"}, m754k = 5, mv = {2, 3, 0}, xi = 49, xs = "kotlin/text/StringsKt")
@SourceDebugExtension({"SMAP\nStringNumberConversionsJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringNumberConversionsJVM.kt\nkotlin/text/StringsKt__StringNumberConversionsJVMKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,569:1\n267#1,7:570\n267#1,7:577\n278#1,8:584\n278#1,8:592\n1#2:600\n1656#3,3:601\n1656#3,3:604\n1656#3,3:607\n*S KotlinDebug\n*F\n+ 1 StringNumberConversionsJVM.kt\nkotlin/text/StringsKt__StringNumberConversionsJVMKt\n*L\n166#1:570,7\n173#1:577,7\n253#1:584,8\n264#1:592,8\n430#1:601,3\n439#1:604,3\n452#1:607,3\n*E\n"})
class StringsKt__StringNumberConversionsJVMKt extends StringsKt__StringBuilderKt {
    @InlineOnly
    /* JADX INFO: renamed from: asciiLetterToLowerCaseCode$StringsKt__StringNumberConversionsJVMKt */
    private static final int m808xae944efa(char c2) {
        return c2 | ' ';
    }

    @InlineOnly
    private static final boolean isAsciiDigit$StringsKt__StringNumberConversionsJVMKt(char c2) {
        return ((c2 + 65488) & 65535) < 10;
    }

    @InlineOnly
    private static final boolean isHexLetter$StringsKt__StringNumberConversionsJVMKt(char c2) {
        return (((c2 | ' ') + (-97)) & 65535) < 6;
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final String toString(byte b2, int i) {
        return Integer.toString(b2, CharsKt__CharJVMKt.checkRadix(i));
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final String toString(short s, int i) {
        return Integer.toString(s, CharsKt__CharJVMKt.checkRadix(i));
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final String toString(int i, int i2) {
        return Integer.toString(i, CharsKt__CharJVMKt.checkRadix(i2));
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final String toString(long j, int i) {
        return Long.toString(j, CharsKt__CharJVMKt.checkRadix(i));
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final boolean toBoolean(String str) {
        return Boolean.parseBoolean(str);
    }

    @InlineOnly
    private static final byte toByte(String str) {
        return Byte.parseByte(str);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final byte toByte(String str, int i) {
        return Byte.parseByte(str, CharsKt__CharJVMKt.checkRadix(i));
    }

    @InlineOnly
    private static final short toShort(String str) {
        return Short.parseShort(str);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final short toShort(String str, int i) {
        return Short.parseShort(str, CharsKt__CharJVMKt.checkRadix(i));
    }

    @InlineOnly
    private static final int toInt(String str) {
        return Integer.parseInt(str);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final int toInt(String str, int i) {
        return Integer.parseInt(str, CharsKt__CharJVMKt.checkRadix(i));
    }

    @InlineOnly
    private static final long toLong(String str) {
        return Long.parseLong(str);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final long toLong(String str, int i) {
        return Long.parseLong(str, CharsKt__CharJVMKt.checkRadix(i));
    }

    @InlineOnly
    private static final float toFloat(String str) {
        return Float.parseFloat(str);
    }

    @InlineOnly
    private static final double toDouble(String str) {
        return Double.parseDouble(str);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigInteger toBigInteger(String str) {
        return new BigInteger(str);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigInteger toBigInteger(String str, int i) {
        return new BigInteger(str, CharsKt__CharJVMKt.checkRadix(i));
    }

    @SinceKotlin(version = "1.2")
    public static final BigInteger toBigIntegerOrNull(String str) {
        return toBigIntegerOrNull(str, 10);
    }

    @SinceKotlin(version = "1.2")
    public static final BigInteger toBigIntegerOrNull(String str, int i) {
        CharsKt__CharJVMKt.checkRadix(i);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        if (length == 1) {
            if (CharsKt__CharJVMKt.digitOf(str.charAt(0), i) < 0) {
                return null;
            }
        } else {
            for (int i2 = str.charAt(0) == '-' ? 1 : 0; i2 < length; i2++) {
                if (CharsKt__CharJVMKt.digitOf(str.charAt(i2), i) < 0) {
                    return null;
                }
            }
        }
        return new BigInteger(str, CharsKt__CharJVMKt.checkRadix(i));
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal toBigDecimal(String str) {
        return new BigDecimal(str);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal toBigDecimal(String str, MathContext mathContext) {
        return new BigDecimal(str, mathContext);
    }

    private static final <T> T screenFloatValue$StringsKt__StringNumberConversionsJVMKt(String str, Function1<? super String, ? extends T> function1) {
        try {
            if (isValidFloat$StringsKt__StringNumberConversionsJVMKt(str)) {
                return function1.invoke(str);
            }
        } catch (NumberFormatException unused) {
        }
        return null;
    }

    @SinceKotlin(version = "1.1")
    public static Double toDoubleOrNull(String str) {
        try {
            if (isValidFloat$StringsKt__StringNumberConversionsJVMKt(str)) {
                return Double.valueOf(Double.parseDouble(str));
            }
        } catch (NumberFormatException unused) {
        }
        return null;
    }

    @SinceKotlin(version = "1.1")
    public static final Float toFloatOrNull(String str) {
        try {
            if (isValidFloat$StringsKt__StringNumberConversionsJVMKt(str)) {
                return Float.valueOf(Float.parseFloat(str));
            }
        } catch (NumberFormatException unused) {
        }
        return null;
    }

    private static final <T> T screenBigDecimalValue$StringsKt__StringNumberConversionsJVMKt(String str, Function1<? super String, ? extends T> function1) {
        try {
            if (isValidBigDecimal$StringsKt__StringNumberConversionsJVMKt(str)) {
                return function1.invoke(str);
            }
        } catch (NumberFormatException unused) {
        }
        return null;
    }

    @SinceKotlin(version = "1.2")
    public static final BigDecimal toBigDecimalOrNull(String str) {
        try {
            if (isValidBigDecimal$StringsKt__StringNumberConversionsJVMKt(str)) {
                return new BigDecimal(str);
            }
        } catch (NumberFormatException unused) {
        }
        return null;
    }

    @SinceKotlin(version = "1.2")
    public static final BigDecimal toBigDecimalOrNull(String str, MathContext mathContext) {
        try {
            if (isValidBigDecimal$StringsKt__StringNumberConversionsJVMKt(str)) {
                return new BigDecimal(str, mathContext);
            }
        } catch (NumberFormatException unused) {
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00c5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static final boolean isValidFloat$StringsKt__StringNumberConversionsJVMKt(String str) {
        char c2;
        boolean z;
        boolean z2;
        int i;
        boolean z3;
        boolean z4;
        boolean z5 = true;
        int length = str.length() - 1;
        int i2 = 0;
        while (true) {
            c2 = ' ';
            if (i2 > length || str.charAt(i2) > ' ') {
                break;
            }
            i2++;
        }
        if (i2 > length) {
            return false;
        }
        while (length > i2 && str.charAt(length) <= ' ') {
            length--;
        }
        if (str.charAt(i2) == '+' || str.charAt(i2) == '-') {
            i2++;
        }
        if (i2 > length) {
            return false;
        }
        if (str.charAt(i2) != '0') {
            z = true;
            z2 = false;
        } else {
            int i3 = i2 + 1;
            if (i3 > length) {
                return true;
            }
            if ((str.charAt(i3) | ' ') == 120) {
                int i4 = i2 + 2;
                int i5 = i4;
                while (true) {
                    if (i5 > length) {
                        z = z5;
                        break;
                    }
                    z = z5;
                    if (((str.charAt(i5) - '0') & 65535) >= 10 && (((r15 | ' ') - 97) & 65535) >= 6) {
                        break;
                    }
                    i5++;
                    z5 = z;
                }
                boolean z6 = i4 != i5 ? z : false;
                if (i5 <= length) {
                    if (str.charAt(i5) == '.') {
                        int i6 = i5 + 1;
                        int i7 = i6;
                        while (i7 <= length) {
                            char c3 = c2;
                            if (((str.charAt(i7) - '0') & 65535) >= 10 && (((r15 | ' ') - 97) & 65535) >= 6) {
                                break;
                            }
                            i7++;
                            c2 = c3;
                        }
                        z4 = i6 != i7 ? z : false;
                        i5 = i7;
                    } else {
                        z4 = false;
                    }
                    if (z6 || z4) {
                        i2 = i5;
                    }
                    if (i2 != -1 || i2 > length) {
                        return false;
                    }
                    z2 = z;
                }
                i2 = -1;
                if (i2 != -1) {
                }
                return false;
            }
        }
        if (!z2) {
            int i8 = i2;
            while (i8 <= length && ((str.charAt(i8) - '0') & 65535) < 10) {
                i8++;
            }
            boolean z7 = i2 != i8 ? z : false;
            if (i8 > length) {
                i2 = i8;
            } else {
                if (str.charAt(i8) == '.') {
                    int i9 = i8 + 1;
                    i = i9;
                    while (i <= length && ((str.charAt(i) - '0') & 65535) < 10) {
                        i++;
                    }
                    if (i9 != i) {
                        z3 = z;
                    }
                    if (!z7 || z3) {
                        i2 = i;
                    } else {
                        String str2 = length == i + 2 ? "NaN" : length == i + 7 ? "Infinity" : null;
                        i2 = (str2 != null && StringsKt__StringsKt.indexOf((CharSequence) str, str2, i, false) == i) ? length + 1 : -1;
                    }
                } else {
                    i = i8;
                }
                z3 = false;
                if (z7) {
                    i2 = i;
                }
            }
            if (i2 == -1) {
                return false;
            }
            if (i2 > length) {
                return z;
            }
        }
        int i10 = i2 + 1;
        int iCharAt = str.charAt(i2) | ' ';
        if (iCharAt != (z2 ? 112 : 101)) {
            if (z2 || (!(iCharAt == 102 || iCharAt == 100) || i10 <= length)) {
                return false;
            }
            return z;
        }
        if (i10 > length) {
            return false;
        }
        if ((str.charAt(i10) == '+' || str.charAt(i10) == '-') && (i10 = i2 + 2) > length) {
            return false;
        }
        while (i10 <= length && ((str.charAt(i10) - '0') & 65535) < 10) {
            i10++;
        }
        if (i10 > length) {
            return z;
        }
        if (i10 != length) {
            return false;
        }
        int iCharAt2 = str.charAt(i10) | ' ';
        if (iCharAt2 == 102 || iCharAt2 == 100) {
            return z;
        }
        return false;
    }

    private static final boolean isValidBigDecimal$StringsKt__StringNumberConversionsJVMKt(String str) {
        int i;
        if (str.length() == 0) {
            return false;
        }
        int i2 = (str.charAt(0) == '-' || str.charAt(0) == '+') ? 1 : 0;
        int i3 = i2;
        while (i3 < str.length() && Character.isDigit(str.charAt(i3))) {
            i3++;
        }
        if (i3 == str.length()) {
            return i3 - i2 > 0;
        }
        if (str.charAt(i3) == '.') {
            i3++;
            if (i3 == str.length()) {
                return i3 - i2 > 1;
            }
            while (i3 < str.length() && Character.isDigit(str.charAt(i3))) {
                i3++;
            }
        }
        if (i3 == str.length()) {
            return true;
        }
        if ((str.charAt(i3) != 'e' && str.charAt(i3) != 'E') || (i = i3 + 1) == str.length()) {
            return false;
        }
        if (str.charAt(i) == '+' || str.charAt(i) == '-') {
            i = i3 + 2;
        }
        if (i == str.length()) {
            return false;
        }
        while (i < str.length() && Character.isDigit(str.charAt(i))) {
            i++;
        }
        return i == str.length();
    }

    @InlineOnly
    private static final String guessNamedFloatConstant$StringsKt__StringNumberConversionsJVMKt(int i, int i2) {
        if (i2 == i + 2) {
            return "NaN";
        }
        if (i2 == i + 7) {
            return "Infinity";
        }
        return null;
    }

    @InlineOnly
    private static final int advanceWhile$StringsKt__StringNumberConversionsJVMKt(String str, int i, int i2, Function1<? super Character, Boolean> function1) {
        while (i <= i2 && function1.invoke(Character.valueOf(str.charAt(i))).booleanValue()) {
            i++;
        }
        return i;
    }

    @InlineOnly
    private static final int backtrackWhile$StringsKt__StringNumberConversionsJVMKt(String str, int i, int i2, Function1<? super Character, Boolean> function1) {
        while (i2 > i && function1.invoke(Character.valueOf(str.charAt(i2))).booleanValue()) {
            i2--;
        }
        return i2;
    }

    @InlineOnly
    /* JADX INFO: renamed from: advanceAndValidateMantissa$StringsKt__StringNumberConversionsJVMKt */
    private static final int m807x47690acb(String str, int i, int i2, boolean z, Function1<? super Character, Boolean> function1) {
        boolean z2;
        String str2;
        int i3 = i;
        while (i3 <= i2 && function1.invoke(Character.valueOf(str.charAt(i3))).booleanValue()) {
            i3++;
        }
        boolean z3 = i != i3;
        if (i3 > i2) {
            if (z) {
                return -1;
            }
            return i3;
        }
        if (str.charAt(i3) == '.') {
            int i4 = i3 + 1;
            int i5 = i4;
            while (i5 <= i2 && function1.invoke(Character.valueOf(str.charAt(i5))).booleanValue()) {
                i5++;
            }
            z2 = i4 != i5;
            i3 = i5;
        } else {
            z2 = false;
        }
        if (z3 || z2) {
            return i3;
        }
        if (z) {
            return -1;
        }
        if (i2 == i3 + 2) {
            str2 = "NaN";
        } else {
            str2 = i2 == i3 + 7 ? "Infinity" : null;
        }
        if (str2 != null && StringsKt__StringsKt.indexOf((CharSequence) str, str2, i3, false) == i3) {
            return i2 + 1;
        }
        return -1;
    }
}
