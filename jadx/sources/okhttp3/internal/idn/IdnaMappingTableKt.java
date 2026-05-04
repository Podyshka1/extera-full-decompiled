package okhttp3.internal.idn;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class IdnaMappingTableKt {
    public static final int read14BitInt(String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        char cCharAt = str.charAt(i);
        return (cCharAt << 7) + str.charAt(i + 1);
    }

    public static final int binarySearch(int i, int i2, Function1<? super Integer, Integer> compare) {
        Intrinsics.checkNotNullParameter(compare, "compare");
        int i3 = i2 - 1;
        while (i <= i3) {
            int i4 = (i + i3) / 2;
            int iIntValue = compare.invoke(Integer.valueOf(i4)).intValue();
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
