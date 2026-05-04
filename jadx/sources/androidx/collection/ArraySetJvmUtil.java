package androidx.collection;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes4.dex */
abstract class ArraySetJvmUtil {
    static Object[] resizeForToArray(Object[] objArr, int i) {
        if (objArr.length < i) {
            return (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i);
        }
        if (objArr.length > i) {
            objArr[i] = null;
        }
        return objArr;
    }
}
