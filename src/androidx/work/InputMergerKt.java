package androidx.work;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class InputMergerKt {
    private static final String TAG;

    static {
        String strTagWithPrefix = Logger.tagWithPrefix("InputMerger");
        Intrinsics.checkNotNullExpressionValue(strTagWithPrefix, "tagWithPrefix(...)");
        TAG = strTagWithPrefix;
    }

    public static final InputMerger fromClassName(String className) {
        Intrinsics.checkNotNullParameter(className, "className");
        try {
            Object objNewInstance = Class.forName(className).getDeclaredConstructor(null).newInstance(null);
            Intrinsics.checkNotNull(objNewInstance, "null cannot be cast to non-null type androidx.work.InputMerger");
            return (InputMerger) objNewInstance;
        } catch (Exception e) {
            Logger.get().error(TAG, "Trouble instantiating " + className, e);
            return null;
        }
    }
}
