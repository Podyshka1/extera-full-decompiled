package io.noties.markwon.html.jsoup.helper;

import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Validate {
    public static void notNull(Object obj) {
        if (obj != null) {
            return;
        }
        f$$ExternalSyntheticBUOutline1.m178m("Object must not be null");
    }

    public static void isTrue(boolean z) {
        if (z) {
            return;
        }
        f$$ExternalSyntheticBUOutline1.m178m("Must be true");
    }

    public static void isFalse(boolean z) {
        if (z) {
            f$$ExternalSyntheticBUOutline1.m178m("Must be false");
        }
    }

    public static void isFalse(boolean z, String str) {
        if (z) {
            f$$ExternalSyntheticBUOutline1.m178m(str);
        }
    }

    public static void notEmpty(String str) {
        if (str == null || str.length() == 0) {
            f$$ExternalSyntheticBUOutline1.m178m("String must not be empty");
        }
    }

    public static void fail(String str) {
        throw new IllegalArgumentException(str);
    }
}
