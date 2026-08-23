package kotlin.text;

import java.util.Set;
import kotlin.Metadata;
import kotlin.internal.InlineOnly;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\u0088\u0004\u001a\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0088\u0004\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006H\u0087\u0088\u0004¨\u0006\u0007"}, d2 = {"toRegex", "Lkotlin/text/Regex;", _UrlKt.FRAGMENT_ENCODE_SET, "option", "Lkotlin/text/RegexOption;", "options", _UrlKt.FRAGMENT_ENCODE_SET, "kotlin-stdlib"}, m754k = 5, mv = {2, 3, 0}, xi = 49, xs = "kotlin/text/StringsKt")
class StringsKt__RegexExtensionsKt extends StringsKt__RegexExtensionsJVMKt {
    @InlineOnly
    private static final Regex toRegex(String str) {
        return new Regex(str);
    }

    @InlineOnly
    private static final Regex toRegex(String str, RegexOption regexOption) {
        return new Regex(str, regexOption);
    }

    @InlineOnly
    private static final Regex toRegex(String str, Set<? extends RegexOption> set) {
        return new Regex(str, set);
    }
}
