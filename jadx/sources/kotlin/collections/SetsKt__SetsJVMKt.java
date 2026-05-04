package kotlin.collections;

import java.util.Collections;
import java.util.Set;
import kotlin.collections.builders.SetBuilder;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public abstract class SetsKt__SetsJVMKt {
    public static Set setOf(Object obj) {
        Set setSingleton = Collections.singleton(obj);
        Intrinsics.checkNotNullExpressionValue(setSingleton, "singleton(...)");
        return setSingleton;
    }

    public static Set createSetBuilder() {
        return new SetBuilder();
    }

    public static Set createSetBuilder(int i) {
        return new SetBuilder(i);
    }

    public static Set build(Set builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        return ((SetBuilder) builder).build();
    }
}
