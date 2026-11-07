package kotlin.time;

import com.sun.jna.Callback;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\u00020\u0001B\t\bB¢\u0006\u0004\b\u0002\u0010\u0003J@\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2!\u0010\n\u001a\u001d\u0012\u0013\u0012\u00110\t¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u000f0\u000bH\u0086\u0088\u0004ø\u0001\u0000JA\u0010\u0010\u001a\u00020\t*\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\t2!\u0010\n\u001a\u001d\u0012\u0013\u0012\u00110\t¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u000f0\u000bH\u0082\u0088\u0004\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0012"}, d2 = {"Lkotlin/time/FractionalParser;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "parse", _UrlKt.FRAGMENT_ENCODE_SET, "value", _UrlKt.FRAGMENT_ENCODE_SET, "startIndex", _UrlKt.FRAGMENT_ENCODE_SET, Callback.METHOD_NAME, "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "endIndex", _UrlKt.FRAGMENT_ENCODE_SET, "parseDigits", "maxDigits", "kotlin-stdlib"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/FractionalParser\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,1613:1\n1351#1,14:1614\n1351#1,14:1628\n1656#2,3:1642\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/FractionalParser\n*L\n1343#1:1614,14\n1344#1:1628,14\n1345#1:1642,3\n*E\n"})
public final class FractionalParser {
    public static final FractionalParser INSTANCE = new FractionalParser();

    private FractionalParser() {
    }

    private final int parseDigits(String str, int i, int i2, Function1<? super Integer, Unit> function1) {
        int iMin = Math.min(i + i2, str.length());
        int i3 = i;
        int i4 = 0;
        while (i3 < iMin) {
            char cCharAt = str.charAt(i3);
            if ('0' > cCharAt || cCharAt >= ':') {
                break;
            }
            i4 = (i4 << 3) + (i4 << 1) + (cCharAt - '0');
            i3++;
        }
        for (int i5 = 0; i5 < i2 - (i3 - i); i5++) {
            i4 = (i4 << 3) + (i4 << 1);
        }
        function1.invoke(Integer.valueOf(i3));
        return i4;
    }

    public final long parse(String value, int startIndex, Function1<? super Integer, Unit> callback) {
        char cCharAt;
        char cCharAt2;
        int iMin = Math.min(startIndex + 6, value.length());
        int i = startIndex;
        int i2 = 0;
        while (i < iMin && '0' <= (cCharAt2 = value.charAt(i)) && cCharAt2 < ':') {
            i2 = (i2 << 3) + (i2 << 1) + (cCharAt2 - '0');
            i++;
        }
        int i3 = 6 - (i - startIndex);
        for (int i4 = 0; i4 < i3; i4++) {
            i2 = (i2 << 1) + (i2 << 3);
        }
        int iMin2 = Math.min(i + 9, value.length());
        int i5 = 0;
        int i6 = i;
        while (i6 < iMin2) {
            char cCharAt3 = value.charAt(i6);
            if ('0' > cCharAt3 || cCharAt3 >= ':') {
                break;
            }
            i5 = (i5 << 3) + (i5 << 1) + (cCharAt3 - '0');
            i6++;
        }
        for (int i7 = 0; i7 < 9 - (i6 - i); i7++) {
            i5 = (i5 << 1) + (i5 << 3);
        }
        while (i6 < value.length() && '0' <= (cCharAt = value.charAt(i6)) && cCharAt < ':') {
            i6++;
        }
        callback.invoke(Integer.valueOf(i6));
        return (((long) i2) * 1000000000) + ((long) i5);
    }
}
