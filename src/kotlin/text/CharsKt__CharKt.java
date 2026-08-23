package kotlin.text;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;
import kotlin.io.encoding.Base64$$ExternalSyntheticBUOutline0;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\b\n\u0002\u0010\f\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\u001a\u000e\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\u0080\u0004\u001a\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\u0080\u0004\u001a\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0005\u001a\u001d\u0010\u0004\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0006\u001a\u000e\u0010\u0007\u001a\u00020\u0002*\u00020\u0001H\u0087\u0080\u0004\u001a\u0016\u0010\u0007\u001a\u00020\u0002*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\u0080\u0004\u001a\u000e\u0010\b\u001a\u00020\t*\u00020\u0002H\u0087\u0080\u0004\u001a\u0016\u0010\n\u001a\u00020\t*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\tH\u0087\u008a\u0004\u001a \u0010\f\u001a\u00020\r*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\u000e\u001a\u00020\rH\u0086\u0080\u0004\u001a\u000e\u0010\u000f\u001a\u00020\r*\u00020\u0002H\u0086\u0080\u0004¨\u0006\u0010"}, d2 = {"digitToInt", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "radix", "digitToIntOrNull", "(C)Ljava/lang/Integer;", "(CI)Ljava/lang/Integer;", "digitToChar", "titlecase", _UrlKt.FRAGMENT_ENCODE_SET, "plus", "other", "equals", _UrlKt.FRAGMENT_ENCODE_SET, "ignoreCase", "isSurrogate", "kotlin-stdlib"}, m754k = 5, mv = {2, 3, 0}, xi = 49, xs = "kotlin/text/CharsKt")
@SourceDebugExtension({"SMAP\nChar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Char.kt\nkotlin/text/CharsKt__CharKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,339:1\n1#2:340\n*E\n"})
public class CharsKt__CharKt extends CharsKt__CharJVMKt {
    public static boolean isSurrogate(char c2) {
        return 55296 <= c2 && c2 < 57344;
    }

    @SinceKotlin(version = "1.5")
    public static final int digitToInt(char c2) {
        int iDigitOf = CharsKt__CharJVMKt.digitOf(c2, 10);
        if (iDigitOf >= 0) {
            return iDigitOf;
        }
        throw new IllegalArgumentException("Char " + c2 + " is not a decimal digit");
    }

    @SinceKotlin(version = "1.5")
    public static final int digitToInt(char c2, int i) {
        Integer numDigitToIntOrNull = digitToIntOrNull(c2, i);
        if (numDigitToIntOrNull != null) {
            return numDigitToIntOrNull.intValue();
        }
        throw new IllegalArgumentException("Char " + c2 + " is not a digit in the given radix=" + i);
    }

    @SinceKotlin(version = "1.5")
    public static final Integer digitToIntOrNull(char c2) {
        Integer numValueOf = Integer.valueOf(CharsKt__CharJVMKt.digitOf(c2, 10));
        if (numValueOf.intValue() >= 0) {
            return numValueOf;
        }
        return null;
    }

    @SinceKotlin(version = "1.5")
    public static final Integer digitToIntOrNull(char c2, int i) {
        CharsKt__CharJVMKt.checkRadix(i);
        Integer numValueOf = Integer.valueOf(CharsKt__CharJVMKt.digitOf(c2, i));
        if (numValueOf.intValue() >= 0) {
            return numValueOf;
        }
        return null;
    }

    @SinceKotlin(version = "1.5")
    public static final char digitToChar(int i) {
        if (i >= 0 && i < 10) {
            return (char) (i + 48);
        }
        CharsKt__CharKt$$ExternalSyntheticBUOutline0.m805m("Int ", i, " is not a decimal digit");
        return (char) 0;
    }

    @SinceKotlin(version = "1.5")
    public static final char digitToChar(int i, int i2) {
        if (2 > i2 || i2 >= 37) {
            CharsKt__CharKt$$ExternalSyntheticBUOutline0.m805m("Invalid radix: ", i2, ". Valid radix values are in range 2..36");
            return (char) 0;
        }
        if (i >= 0 && i < i2) {
            return i < 10 ? (char) (i + 48) : (char) (((char) (i + 65)) - '\n');
        }
        Base64$$ExternalSyntheticBUOutline0.m773m("Digit ", i, " does not represent a valid digit in radix ", i2);
        return (char) 0;
    }

    @SinceKotlin(version = "1.5")
    public static final String titlecase(char c2) {
        return _OneToManyTitlecaseMappingsKt.titlecaseImpl(c2);
    }

    @InlineOnly
    private static final String plus(char c2, String str) {
        return c2 + str;
    }

    public static /* synthetic */ boolean equals$default(char c2, char c3, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return equals(c2, c3, z);
    }

    public static final boolean equals(char c2, char c3, boolean z) {
        if (c2 == c3) {
            return true;
        }
        if (!z) {
            return false;
        }
        char upperCase = Character.toUpperCase(c2);
        char upperCase2 = Character.toUpperCase(c3);
        return upperCase == upperCase2 || Character.toLowerCase(upperCase) == Character.toLowerCase(upperCase2);
    }
}
