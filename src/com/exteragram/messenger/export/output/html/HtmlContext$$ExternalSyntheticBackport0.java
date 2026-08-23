package com.exteragram.messenger.export.output.html;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract /* synthetic */ class HtmlContext$$ExternalSyntheticBackport0 {
    /* JADX INFO: renamed from: m */
    public static /* synthetic */ String m243m(String str, int i) {
        if (i < 0) {
            throw new IllegalArgumentException("count is negative: " + i);
        }
        int length = str.length();
        if (i == 0 || length == 0) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if (i == 1) {
            return str;
        }
        if (str.length() <= Integer.MAX_VALUE / i) {
            StringBuilder sb = new StringBuilder(length * i);
            for (int i2 = 0; i2 < i; i2++) {
                sb.append(str);
            }
            return sb.toString();
        }
        throw new OutOfMemoryError("Repeating " + str.length() + " bytes String " + i + " times will produce a String exceeding maximum size.");
    }
}
