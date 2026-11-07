package okhttp3.internal.idn;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0001H\u0000\u001a0\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\bH\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\t"}, d2 = {"read14BitInt", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "index", "binarySearch", "position", "limit", "compare", "Lkotlin/Function1;", "okhttp"}, m862k = 2, mv = {2, 2, 0}, xi = 48)
public final class IdnaMappingTableKt {
    public static final int read14BitInt(String str, int i) {
        char cCharAt = str.charAt(i);
        return (cCharAt << 7) + str.charAt(i + 1);
    }

    public static final int binarySearch(int i, int i2, Function1<? super Integer, Integer> function1) {
        int i3 = i2 - 1;
        while (i <= i3) {
            int i4 = (i + i3) / 2;
            int iIntValue = function1.invoke(Integer.valueOf(i4)).intValue();
            if (iIntValue < 0) {
                i3 = i4 - 1;
            } else {
                if (iIntValue <= 0) {
                    return i4;
                }
                i = i4 + 1;
            }
        }
        return (-i) - 1;
    }
}
