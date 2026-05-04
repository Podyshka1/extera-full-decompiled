package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SparseArrayCompatKt {
    private static final Object DELETED = new Object();

    public static final Object commonGet(SparseArrayCompat sparseArrayCompat, int i) {
        Object obj;
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        int iBinarySearch = ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i);
        if (iBinarySearch < 0 || (obj = sparseArrayCompat.values[iBinarySearch]) == DELETED) {
            return null;
        }
        return obj;
    }

    public static final Object commonGet(SparseArrayCompat sparseArrayCompat, int i, Object obj) {
        Object obj2;
        Intrinsics.checkNotNullParameter(sparseArrayCompat, "<this>");
        int iBinarySearch = ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i);
        return (iBinarySearch < 0 || (obj2 = sparseArrayCompat.values[iBinarySearch]) == DELETED) ? obj : obj2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: gc */
    public static final void m111gc(SparseArrayCompat sparseArrayCompat) {
        int i = sparseArrayCompat.size;
        int[] iArr = sparseArrayCompat.keys;
        Object[] objArr = sparseArrayCompat.values;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != DELETED) {
                if (i3 != i2) {
                    iArr[i2] = iArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        sparseArrayCompat.garbage = false;
        sparseArrayCompat.size = i2;
    }
}
