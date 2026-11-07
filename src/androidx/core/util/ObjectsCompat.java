package androidx.core.util;

import java.util.Objects;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes.dex */
public abstract class ObjectsCompat {
    public static boolean equals(Object obj, Object obj2) {
        return Objects.equals(obj, obj2);
    }

    public static int hash(Object... objArr) {
        return Objects.hash(objArr);
    }

    public static <T> T requireNonNull(T t) {
        t.getClass();
        return t;
    }

    public static <T> T requireNonNull(T t, String str) {
        if (t != null) {
            return t;
        }
        f$$ExternalSyntheticBUOutline2.m213m(str);
        return null;
    }
}
