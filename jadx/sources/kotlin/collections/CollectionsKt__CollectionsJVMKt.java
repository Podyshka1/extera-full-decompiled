package kotlin.collections;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public abstract class CollectionsKt__CollectionsJVMKt {
    public static List listOf(Object obj) {
        List listSingletonList = Collections.singletonList(obj);
        Intrinsics.checkNotNullExpressionValue(listSingletonList, "singletonList(...)");
        return listSingletonList;
    }

    public static List createListBuilder() {
        return new ListBuilder(0, 1, null);
    }

    public static List createListBuilder(int i) {
        return new ListBuilder(i);
    }

    public static List build(List builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        return ((ListBuilder) builder).build();
    }

    public static List shuffled(Iterable iterable) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        List mutableList = CollectionsKt___CollectionsKt.toMutableList(iterable);
        Collections.shuffle(mutableList);
        return mutableList;
    }

    public static Object[] terminateCollectionToArray(int i, Object[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        if (i < array.length) {
            array[i] = null;
        }
        return array;
    }

    public static final Object[] copyToArrayOfAny(Object[] objArr, boolean z) {
        Intrinsics.checkNotNullParameter(objArr, "<this>");
        if (z && Intrinsics.areEqual(objArr.getClass(), Object[].class)) {
            return objArr;
        }
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length, Object[].class);
        Intrinsics.checkNotNullExpressionValue(objArrCopyOf, "copyOf(...)");
        return objArrCopyOf;
    }
}
