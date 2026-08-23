package com.google.common.base;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Objects extends ExtraObjectsMethodsForWeb {
    public static boolean equal(Object obj, Object obj2) {
        return java.util.Objects.equals(obj, obj2);
    }

    public static int hashCode(Object... objArr) {
        return java.util.Objects.hash(objArr);
    }
}
