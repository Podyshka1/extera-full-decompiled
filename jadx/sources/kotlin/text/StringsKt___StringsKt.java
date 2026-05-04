package kotlin.text;

import java.util.NoSuchElementException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public abstract class StringsKt___StringsKt extends StringsKt___StringsJvmKt {
    public static char last(CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        if (charSequence.length() == 0) {
            throw new NoSuchElementException("Char sequence is empty.");
        }
        return charSequence.charAt(StringsKt__StringsKt.getLastIndex(charSequence));
    }

    public static String drop(String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (i < 0) {
            throw new IllegalArgumentException(("Requested character count " + i + " is less than zero.").toString());
        }
        String strSubstring = str.substring(RangesKt.coerceAtMost(i, str.length()));
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static String take(String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (i < 0) {
            throw new IllegalArgumentException(("Requested character count " + i + " is less than zero.").toString());
        }
        String strSubstring = str.substring(0, RangesKt.coerceAtMost(i, str.length()));
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return strSubstring;
    }
}
