package kotlin.jvm.internal;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ArrayIteratorKt {
    public static final Iterator iterator(Object[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return new ArrayIterator(array);
    }
}
