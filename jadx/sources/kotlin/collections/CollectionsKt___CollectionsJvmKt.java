package kotlin.collections;

import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public abstract class CollectionsKt___CollectionsJvmKt extends CollectionsKt__ReversedViewsKt {
    public static void reverse(List list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Collections.reverse(list);
    }
}
