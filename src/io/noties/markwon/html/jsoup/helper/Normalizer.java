package io.noties.markwon.html.jsoup.helper;

import java.util.Locale;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Normalizer {
    public static String lowerCase(String str) {
        return str != null ? str.toLowerCase(Locale.ENGLISH) : _UrlKt.FRAGMENT_ENCODE_SET;
    }
}
