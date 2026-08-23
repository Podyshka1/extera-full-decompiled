package kotlin.text;

import java.util.Locale;
import kotlin.Deprecated;
import kotlin.DeprecatedSinceKotlin;
import kotlin.IgnorableReturnValue;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.ReplaceWith;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\f\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\u001a\u000e\u0010\u0005\u001a\u00020\u0006*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010\u0007\u001a\u00020\u0006*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010\b\u001a\u00020\u0006*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010\t\u001a\u00020\u0006*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010\n\u001a\u00020\u0006*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010\u000b\u001a\u00020\u0006*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010\f\u001a\u00020\u0006*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010\r\u001a\u00020\u0006*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010\u000e\u001a\u00020\u0006*\u00020\u0002H\u0086\u0080\u0004\u001a\u000e\u0010\u000f\u001a\u00020\u0006*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010\u0010\u001a\u00020\u0006*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010\u0011\u001a\u00020\u0002*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010\u0012\u001a\u00020\u0002*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010\u0013\u001a\u00020\u0014*\u00020\u0002H\u0087\u0088\u0004\u001a\u0016\u0010\u0013\u001a\u00020\u0014*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0016H\u0087\u0080\u0004\u001a\u000e\u0010\u0017\u001a\u00020\u0002*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010\u0018\u001a\u00020\u0002*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010\u0019\u001a\u00020\u0014*\u00020\u0002H\u0087\u0088\u0004\u001a\u0016\u0010\u0019\u001a\u00020\u0014*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0016H\u0087\u0080\u0004\u001a\u000e\u0010\u001a\u001a\u00020\u0006*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010\u001b\u001a\u00020\u0002*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010\u001c\u001a\u00020\u0002*\u00020\u0002H\u0087\u0088\u0004\u001a\u0016\u0010\u001d\u001a\u00020\u0014*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0016H\u0087\u0080\u0004\u001a\u000e\u0010\"\u001a\u00020\u0006*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010#\u001a\u00020\u0006*\u00020\u0002H\u0087\u0088\u0004\u001a\u001a\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00022\u0006\u0010'\u001a\u00020%H\u0080\u0080\u0004\u001a\u0012\u0010(\u001a\u00020%2\u0006\u0010'\u001a\u00020%H\u0081\u0080\b\"\u0019\u0010\u0000\u001a\u00020\u0001*\u00020\u00028FX\u0086\u0084\b¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u0019\u0010\u001e\u001a\u00020\u001f*\u00020\u00028FX\u0086\u0084\b¢\u0006\u0006\u001a\u0004\b \u0010!¨\u0006)"}, d2 = {"category", "Lkotlin/text/CharCategory;", _UrlKt.FRAGMENT_ENCODE_SET, "getCategory", "(C)Lkotlin/text/CharCategory;", "isDefined", _UrlKt.FRAGMENT_ENCODE_SET, "isLetter", "isLetterOrDigit", "isDigit", "isIdentifierIgnorable", "isISOControl", "isJavaIdentifierPart", "isJavaIdentifierStart", "isWhitespace", "isUpperCase", "isLowerCase", "toUpperCase", "uppercaseChar", "uppercase", _UrlKt.FRAGMENT_ENCODE_SET, "locale", "Ljava/util/Locale;", "toLowerCase", "lowercaseChar", "lowercase", "isTitleCase", "toTitleCase", "titlecaseChar", "titlecase", "directionality", "Lkotlin/text/CharDirectionality;", "getDirectionality", "(C)Lkotlin/text/CharDirectionality;", "isHighSurrogate", "isLowSurrogate", "digitOf", _UrlKt.FRAGMENT_ENCODE_SET, "char", "radix", "checkRadix", "kotlin-stdlib"}, m754k = 5, mv = {2, 3, 0}, xi = 49, xs = "kotlin/text/CharsKt")
public class CharsKt__CharJVMKt {
    public static final CharCategory getCategory(char c2) {
        return CharCategory.INSTANCE.valueOf(Character.getType(c2));
    }

    @InlineOnly
    private static final boolean isDefined(char c2) {
        return Character.isDefined(c2);
    }

    @InlineOnly
    private static final boolean isLetter(char c2) {
        return Character.isLetter(c2);
    }

    @InlineOnly
    private static final boolean isLetterOrDigit(char c2) {
        return Character.isLetterOrDigit(c2);
    }

    @InlineOnly
    private static final boolean isDigit(char c2) {
        return Character.isDigit(c2);
    }

    @InlineOnly
    private static final boolean isIdentifierIgnorable(char c2) {
        return Character.isIdentifierIgnorable(c2);
    }

    @InlineOnly
    private static final boolean isISOControl(char c2) {
        return Character.isISOControl(c2);
    }

    @InlineOnly
    private static final boolean isJavaIdentifierPart(char c2) {
        return Character.isJavaIdentifierPart(c2);
    }

    @InlineOnly
    private static final boolean isJavaIdentifierStart(char c2) {
        return Character.isJavaIdentifierStart(c2);
    }

    public static final boolean isWhitespace(char c2) {
        return Character.isWhitespace(c2) || Character.isSpaceChar(c2);
    }

    @InlineOnly
    private static final boolean isUpperCase(char c2) {
        return Character.isUpperCase(c2);
    }

    @InlineOnly
    private static final boolean isLowerCase(char c2) {
        return Character.isLowerCase(c2);
    }

    @Deprecated(message = "Use uppercaseChar() instead.", replaceWith = @ReplaceWith(expression = "uppercaseChar()", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "2.1", warningSince = "1.5")
    @InlineOnly
    private static final char toUpperCase(char c2) {
        return Character.toUpperCase(c2);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final char uppercaseChar(char c2) {
        return Character.toUpperCase(c2);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final String uppercase(char c2) {
        return String.valueOf(c2).toUpperCase(Locale.ROOT);
    }

    @SinceKotlin(version = "1.5")
    public static final String uppercase(char c2, Locale locale) {
        return String.valueOf(c2).toUpperCase(locale);
    }

    @Deprecated(message = "Use lowercaseChar() instead.", replaceWith = @ReplaceWith(expression = "lowercaseChar()", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "2.1", warningSince = "1.5")
    @InlineOnly
    private static final char toLowerCase(char c2) {
        return Character.toLowerCase(c2);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final char lowercaseChar(char c2) {
        return Character.toLowerCase(c2);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final String lowercase(char c2) {
        return String.valueOf(c2).toLowerCase(Locale.ROOT);
    }

    @SinceKotlin(version = "1.5")
    public static final String lowercase(char c2, Locale locale) {
        return String.valueOf(c2).toLowerCase(locale);
    }

    @InlineOnly
    private static final boolean isTitleCase(char c2) {
        return Character.isTitleCase(c2);
    }

    @Deprecated(message = "Use titlecaseChar() instead.", replaceWith = @ReplaceWith(expression = "titlecaseChar()", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "2.1", warningSince = "1.5")
    @InlineOnly
    private static final char toTitleCase(char c2) {
        return Character.toTitleCase(c2);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final char titlecaseChar(char c2) {
        return Character.toTitleCase(c2);
    }

    @SinceKotlin(version = "1.5")
    public static final String titlecase(char c2, Locale locale) {
        String strUppercase = uppercase(c2, locale);
        if (strUppercase.length() > 1) {
            if (c2 != 329) {
                return strUppercase.charAt(0) + strUppercase.substring(1).toLowerCase(Locale.ROOT);
            }
        } else if (Intrinsics.areEqual(strUppercase, String.valueOf(c2).toUpperCase(Locale.ROOT))) {
            return String.valueOf(Character.toTitleCase(c2));
        }
        return strUppercase;
    }

    public static final CharDirectionality getDirectionality(char c2) {
        return CharDirectionality.INSTANCE.valueOf(Character.getDirectionality(c2));
    }

    @InlineOnly
    private static final boolean isHighSurrogate(char c2) {
        return Character.isHighSurrogate(c2);
    }

    @InlineOnly
    private static final boolean isLowSurrogate(char c2) {
        return Character.isLowSurrogate(c2);
    }

    public static final int digitOf(char c2, int i) {
        return Character.digit((int) c2, i);
    }

    @PublishedApi
    @IgnorableReturnValue
    public static int checkRadix(int i) {
        if (2 <= i && i < 37) {
            return i;
        }
        throw new IllegalArgumentException("radix " + i + " was not in valid range " + new IntRange(2, 36));
    }
}
