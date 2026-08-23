package com.google.common.base;

import java.util.Locale;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
abstract class Platform {
    private static final PatternCompiler patternCompiler = loadPatternCompiler();

    public static String formatCompact4Digits(double d) {
        return String.format(Locale.ROOT, "%.4g", Double.valueOf(d));
    }

    public static boolean stringIsNullOrEmpty(String str) {
        return str == null || str.isEmpty();
    }

    public static String nullToEmpty(String str) {
        return str == null ? _UrlKt.FRAGMENT_ENCODE_SET : str;
    }

    public static String emptyToNull(String str) {
        if (stringIsNullOrEmpty(str)) {
            return null;
        }
        return str;
    }

    public static String lenientFormat(String str, Object... objArr) {
        return Strings.lenientFormat(str, objArr);
    }

    public static String stringValueOf(Object obj) {
        return String.valueOf(obj);
    }

    private static PatternCompiler loadPatternCompiler() {
        return new JdkPatternCompiler();
    }

    public static final class JdkPatternCompiler implements PatternCompiler {
        private JdkPatternCompiler() {
        }
    }
}
