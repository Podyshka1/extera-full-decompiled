package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class CharArrayPool extends CharArrayPoolBase {
    public static final CharArrayPool INSTANCE = new CharArrayPool();

    private CharArrayPool() {
    }

    public final char[] take() {
        return super.take(128);
    }

    public final void release(char[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        releaseImpl(array);
    }
}
