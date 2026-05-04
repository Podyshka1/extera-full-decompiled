package com.google.common.primitives;

import com.google.common.base.Preconditions;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Floats extends FloatsMethodsForWeb {
    public static int hashCode(float f) {
        return Float.floatToIntBits(f);
    }

    public static String join(String str, float... fArr) {
        Preconditions.checkNotNull(str);
        if (fArr.length == 0) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        StringBuilder sb = new StringBuilder(fArr.length * 12);
        sb.append(fArr[0]);
        for (int i = 1; i < fArr.length; i++) {
            sb.append(str);
            sb.append(fArr[i]);
        }
        return sb.toString();
    }
}
