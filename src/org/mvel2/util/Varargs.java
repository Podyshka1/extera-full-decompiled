package org.mvel2.util;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class Varargs {
    public static Object[] normalizeArgsForVarArgs(Class<?>[] clsArr, Object[] objArr, boolean z) {
        if (!z) {
            return objArr;
        }
        Object objNewInstance = objArr.length > 0 ? objArr[objArr.length - 1] : Array.newInstance(clsArr[clsArr.length - 1].getComponentType(), 0);
        if (clsArr.length == objArr.length && (objNewInstance == null || objNewInstance.getClass().isArray())) {
            return objArr;
        }
        int length = (objArr.length - clsArr.length) + 1;
        Object objNewInstance2 = Array.newInstance(clsArr[clsArr.length - 1].getComponentType(), length);
        for (int i = 0; i < length; i++) {
            Array.set(objNewInstance2, i, objArr[(clsArr.length - 1) + i]);
        }
        Object[] objArr2 = new Object[clsArr.length];
        for (int i2 = 0; i2 < clsArr.length - 1; i2++) {
            objArr2[i2] = objArr[i2];
        }
        objArr2[clsArr.length - 1] = objNewInstance2;
        return objArr2;
    }

    public static Class<?> paramTypeVarArgsSafe(Class<?>[] clsArr, int i, boolean z) {
        if (z) {
            return i < clsArr.length + (-1) ? clsArr[i] : clsArr[clsArr.length - 1].getComponentType();
        }
        return clsArr[i];
    }
}
