package kotlin.text;

import java.util.Locale;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010\f\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0080\u0080\u0004¨\u0006\u0003"}, d2 = {"titlecaseImpl", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "kotlin-stdlib"}, m754k = 2, mv = {2, 3, 0}, xi = 48)
public final class _OneToManyTitlecaseMappingsKt {
    public static final String titlecaseImpl(char c2) {
        String strValueOf = String.valueOf(c2);
        Locale locale = Locale.ROOT;
        String upperCase = strValueOf.toUpperCase(locale);
        if (upperCase.length() <= 1) {
            return String.valueOf(Character.toTitleCase(c2));
        }
        if (c2 == 329) {
            return upperCase;
        }
        return upperCase.charAt(0) + upperCase.substring(1).toLowerCase(locale);
    }
}
